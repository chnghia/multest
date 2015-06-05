<?php
class Post extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
    }

    private function get_query($query)
    {
      $pieces = explode(",", $query);
      foreach ($pieces as $value)
      {
        $term = strtolower($value);
        $this->db->or_like("name", $term);
      }
    }

    public function listall($query, $page=1)
    {
      if ($query)
        $this->get_query($query);
      $this->db->from("posts");
      $this->db->limit(20, 20 * ($page - 1));
      $query= $this->db->get();
      
      return $query->result_array();
    }

    public function countall($query)
    {
      if ($query)
        $this->get_query($query);
      $this->db->from("posts");
      return $this->db->count_all_results();
    }
}