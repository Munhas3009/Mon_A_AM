<ul class="sidebar-menu" data-widget="tree">
    <li class="header">PAINEL DE NAVEGAÇÃO</li>


    <li class="treeview">
        <a href="#">
            <i class="fa fa-medkit" aria-hidden="true"></i> <span> Tratamento </span>
            <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
            </span>
        </a>
        <ul class="treeview-menu">
            <li><a href="<?php echo $this->Url->build('/medico/tratamentos/add'); ?>"><i class="fa fa-circle-o"></i> Registar </a></li>
            <li><a href="<?php echo $this->Url->build('/medico/tratamentos'); ?>"><i class="fa fa-circle-o"></i> Todos </a></li>

        </ul>
    </li>

    <li>
        <a href="<?php echo $this->Url->build('/pages/calendar'); ?>">
            <i class="fa fa-calendar"></i> <span>Calendário</span>
            <span class="pull-right-container">
                <small class="label pull-right bg-red">3</small>
                <small class="label pull-right bg-blue">17</small>
            </span>
        </a>
    </li>

    <li class="treeview">
        <a href="<?php echo $this->Url->build('/users/logout '); ?>">
            <i class="fa fa-power-off"></i> <span>Terminar Sessão</span>
            <span class="pull-right-container">
            </span>
        </a>

    </li>

</ul>
