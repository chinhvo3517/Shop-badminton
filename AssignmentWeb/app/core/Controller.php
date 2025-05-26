<?php
class Controller {
    protected function loadFormalInfo() {
        $formalInfo = $this->model('FormalInfo');
        return $formalInfo->getAllFormalInfo();
    }

    public function model($model) {
        $modelPath = __DIR__ . '/../models/' . $model . '.php';
        if (!file_exists($modelPath)) {
            die('Model ' . $model . ' does not exist');
        }
        require_once $modelPath;
        return new $model;
    }

    public function view($view, $data = []) {
        $viewPath = __DIR__ . '/../views/' . $view;
        // Add .php extension if not present
        if (!pathinfo($viewPath, PATHINFO_EXTENSION)) {
            $viewPath .= '.php';
        }
        
        // Load formal info if not already present in data
        if (!isset($data['formalInfo'])) {
            $data['formalInfo'] = $this->loadFormalInfo();
        }
        
        if (file_exists($viewPath)) {
            extract($data);
            ob_start();
            require_once $viewPath;
            $content = ob_get_clean();
            echo $content;
        } else {
            die('View ' . $view . ' does not exist at ' . $viewPath);
        }
    }
}
