<?php
include '../include/header.php';
include('../include/stylesheet.php');
?>
</head>
<body class="hold-transition sidebar-mini">
    <div class="wrapper">
        <nav class="main-header navbar navbar-expand navbar-white navbar-light">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
                </li>
            </ul>
            <ul class="navbar-nav ml-auto">
                <li class="nav-item dropdown">
                    <a class="nav-link" data-toggle="dropdown" href="#">
                        <i class="far fa-bell"></i>
                        <span class="badge badge-warning navbar-badge">15</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                        <span class="dropdown-item dropdown-header">15 Notifications</span>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item">
                            <i class="fas fa-envelope mr-2"></i> 4 new messages
                            <span class="float-right text-muted text-sm">3 mins</span>
                        </a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item">
                            <i class="fas fa-users mr-2"></i> 8 friend requests
                            <span class="float-right text-muted text-sm">12 hours</span>
                        </a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item">
                            <i class="fas fa-file mr-2"></i> 3 new reports
                            <span class="float-right text-muted text-sm">2 days</span>
                        </a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item dropdown-footer">See All Notifications</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-widget="fullscreen" href="#" role="button">
                        <i class="fas fa-expand-arrows-alt"></i>
                    </a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link" href="javascript:void(0)" onclick="systemlogout(this)">
                        <i class="fas fa-user"></i>
                    </a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link" href="javascript:void(0)" onclick="systemlogout(this)">
                        <i class="fas fa-power-off"></i>
                    </a>
                </li>
            </ul>
        </nav>
        <aside class="main-sidebar sidebar-dark-primary elevation-4">
            <a href="../home/" class="brand-link">
                <img src="../template_files/dist/img/logo.png" alt="AdminLTE Logo" class="" style="opacity: .8; width:200px;" >
            </a>
            <div class="sidebar">
                <div class="form-inline">
                    <div class="input-group" data-widget="sidebar-search">
                        <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
                        <div class="input-group-append">
                            <button class="btn btn-sidebar">
                                <i class="fas fa-search fa-fw"></i>
                            </button>
                        </div>
                    </div>
                </div>
                <nav class="mt-2">
                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                        <li class="nav-item">
                            <a href="../home/" class="nav-link">
                                <i class="nav-icon fas fa-tachometer-alt"></i>
                                <p>
                                    Dashboard
                                    <i class="right fas fa-angle-left"></i>
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="nav-link">
                                <i class="nav-icon fas fa-server"></i>
                                <p>Asset Management
                                    <i class="fas fa-angle-left right"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="../asset_hardware/" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Hardware</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="../asset_license/" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>License</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="../asset_accessories/" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Accessory</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="../asset_components/" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Component</p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a href="../users/" class="nav-link">
                                <i class="nav-icon fas fa-user"></i>
                                <p>Users Management
                                    <i class="fas fa-angle-left right"></i>
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="nav-link">
                                <i class="nav-icon fas fa-cogs"></i>
                                <p>Settings
                                    <i class="fas fa-angle-left right"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="../company/" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Companies</p>
                                    </a>
                                </li>
<!--                                <li class="nav-item">
                                    <a href="../location/" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Locations</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="../supplier/" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Suppliers</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="../manufacturer/" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Manufacturer</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="../asset_type/" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Type</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="../asset_category/" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Category</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="../asset_category_type/" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Category Type</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="../asset_model/" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Asset Model</p>
                                    </a>
                                </li>-->
                            </ul>
                        </li>

                    </ul>
                </nav>
            </div>
        </aside>