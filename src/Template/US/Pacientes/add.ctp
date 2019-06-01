<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Paciente $paciente
 */
?>
<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        Paciente
        <small>
            <?php echo __(''); ?>
            <i class="fa fa-plus-circle"></i>
        </small>

    </h1>
    <ol class="breadcrumb">
        <li><a href="<?php echo $this->Url->build(['action' => 'index']); ?>"><i class="fa fa-dashboard"></i> <?php echo __('Home'); ?></a></li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-md-12">
            <!-- general form elements -->
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title"><?php echo __('Formulário'); ?></h3>
                </div>
                <!-- /.box-header -->
                <!-- form start -->
                <?php echo $this->Form->create($paciente, ['role' => 'form', 'id'=>'form1']); ?>
                <div class="box-body">

                    <div class="col-md-6">
                        <div class="form-group has-feedback">
                            <?php echo $this->Form->control('name', ['label' => 'Nome completo', 'placeholder' => 'Nome completo']); ?>
                            <span class="glyphicon glyphicon-user form-control-feedback"></span>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group has-feedback">
                            <?php echo $this->Form->control('area_trabalho', ['label' => 'Área de trabalho', 'placeholder' => 'Área de trabalho']); ?>
                            <span class="glyphicon glyphicon-paperclip form-control-feedback"></span>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group has-feedback">
                            <?php echo $this->Form->control('residencia', ['label' => 'Residência', 'placeholder' => 'Residência']); ?>
                            <span class="glyphicon glyphicon-home form-control-feedback"></span>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group has-feedback">
                            <?php
                            echo $this->Form->control('genero', [
                                'options' => ['empty' => '', 'Feminino' => 'Feminino', 'Masculino' => 'Masculino']
                                    ], ['label' => 'Genero']);
                            ?>
                            <span class="glyphicon glyphicon-user form-control-feedback"></span>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group has-feedback">
                            <?php echo $this->Form->control('idade', ['label' => 'Idade', 'placeholder' => 'Idade']); ?>
                            <span class="glyphicon glyphicon-time form-control-feedback"></span>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group has-feedback">
                            <?php echo $this->Form->control('contacto', ['label' => 'Contacto', 'placeholder' => 'Contacto']); ?>
                            <span class="glyphicon glyphicon-phone form-control-feedback"></span>
                        </div>
                    </div>

                </div>
                <!-- /.box-body -->

                <?php echo $this->Form->submit(__('Salvar'), ['class' => 'btn btn-primary']); ?>

                <?php echo $this->Form->end(); ?>
            </div>
            <!-- /.box -->
        </div>
    </div>
    <!-- /.row -->
</section>

<?php echo $this->Html->script('AdminLTE./bower_components/jquery-validation-1.19.0/dist/jquery.validate', ['block' => 'script']); ?>
<?php echo $this->Html->script('AdminLTE./bower_components/jquery-validation-1.19.0/dist/jquery.validate.min', ['block' => 'script']); ?>


<?php echo $this->Html->script('AdminLTE.demo', ['block' => 'script']); ?>

<script>
    $('#form1').validate({
        rules: {
            'name': {
                required: true,
            },
            'area_trabalho': {
                required: true,
            },
            'residencia': {
                required: true,
            },
            'genero': {
                required: true,                
            },
            'idade': {
                required: true,
                number: true,
            },
            'contacto': {
                required: true,
                number: true,
            },
        },
        messages: {
            'name': {
                required: "Por favor introduza o nome",
            },
            'area_trabalho': {
                required: "Area de trabalho em falta",
            },
            'genero': {
                required: "Please enter email",
            },
            'idade': {
                required: "Please enter password",
            },
            'contacto': {
                required: "Please enter mobile number",
            },
        },
    });
</script>