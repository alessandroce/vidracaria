inherited FSelecionarPlanoContas: TFSelecionarPlanoContas
  Caption = 'FSelecionarPlanoContas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited grConsulta: TcxGrid
      inherited grConsultaDBTableView1: TcxGridDBTableView
        OnCustomDrawCell = grConsultaDBTableView1CustomDrawCell
        object grConsultaDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'Sequencia'
          DataBinding.FieldName = 'CODIGO'
          Width = 82
        end
        object grConsultaDBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 480
        end
        object grConsultaDBTableView1NIVEL: TcxGridDBColumn
          DataBinding.FieldName = 'NIVEL'
          Visible = False
        end
        object grConsultaDBTableView1ID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object grConsultaDBTableView1PGR_ID: TcxGridDBColumn
          DataBinding.FieldName = 'PGR_ID'
          Visible = False
        end
      end
    end
  end
  inherited frxReport1: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  inherited qConsulta: TIBQuery
    SQL.Strings = (
      'select nivel,'
      '       id,'
      '       codigo,'
      '       descricao,'
      '       pgr_id'
      '  from ('
      'select 0 nivel,'
      '       0 id,'
      '       lpad(0,2,'#39'0'#39') codigo,'
      '       '#39'PLANO DE CONTAS'#39' descricao,'
      '       0 pgr_id'
      '  from rdb$database'
      'union all'
      'select nivel, id, codigo, descricao, pgr_id'
      '  from ('
      '    select nivel, id, codigo, descricao, pgr_id'
      '      from ('
      '            select 1 nivel,'
      '                   coalesce(pl_grupo.pgr_id,0) id,'
      '                   lpad(pl_grupo.pgr_codigo,2,'#39'0'#39') codigo,'
      '                   pl_grupo.pgr_descricao descricao,'
      '                   pl_grupo.pgr_id'
      '              from pl_grupo'
      '             where pl_grupo.pgr_id>-1'
      '            union all'
      '            select 2 nivel,'
      '                   coalesce(pl_subgrupo.psg_id,0) id,'
      
        '                   lpad(coalesce(pl_grupo.pgr_codigo,'#39'0'#39'),2,'#39'0'#39')' +
        '||'#39'.'#39'||'
      
        '                   lpad(coalesce(pl_subgrupo.psg_codigo,'#39'0'#39'),2,'#39 +
        '0'#39') codigo,'
      '                   '#39'    '#39'||pl_subgrupo.psg_descricao descricao,'
      '                   pl_grupo.pgr_id'
      '              from pl_grupo'
      
        '             left join pl_subgrupo on (pl_subgrupo.psg_pgr_id=pl' +
        '_grupo.pgr_id)'
      '             where pl_grupo.pgr_id>-1'
      '            union all'
      '            select 3 nivel,'
      '                   coalesce(pl_item.pit_id,0) id,'
      
        '                   lpad(coalesce(pl_grupo.pgr_codigo,'#39'0'#39'),2,'#39'0'#39')' +
        ' ||'#39'.'#39'||'
      
        '                   lpad(coalesce(pl_subgrupo.psg_codigo,'#39'0'#39'),2,'#39 +
        '0'#39') ||'#39'.'#39'||'
      
        '                   lpad(coalesce(pl_item.pit_codigo,'#39'0'#39'),2,'#39'0'#39') ' +
        'codigo,'
      '                   '#39'        '#39'||pl_item.pit_descricao descricao,'
      '                   pl_grupo.pgr_id'
      '              from pl_grupo'
      
        '             left join pl_subgrupo on (pl_subgrupo.psg_pgr_id=pl' +
        '_grupo.pgr_id)'
      
        '             left join pl_item on (pl_item.pit_psg_id=pl_subgrup' +
        'o.psg_id)'
      '             where pl_grupo.pgr_id>-1)'
      '     where ID>0'
      '     order by CODIGO'
      '))'
      ' where pgr_id = :pgr_id')
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pgr_id'
        ParamType = ptInput
      end>
    object qConsultaNIVEL: TIntegerField
      FieldName = 'NIVEL'
      Required = True
    end
    object qConsultaID: TIntegerField
      FieldName = 'ID'
    end
    object qConsultaCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Size = 8
    end
    object qConsultaDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Size = 108
    end
    object qConsultaPGR_ID: TIntegerField
      FieldName = 'PGR_ID'
      Required = True
    end
  end
  inherited cdsConsulta: TClientDataSet
    object cdsConsultaNIVEL: TIntegerField
      FieldName = 'NIVEL'
      Required = True
    end
    object cdsConsultaID: TIntegerField
      FieldName = 'ID'
    end
    object cdsConsultaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 8
    end
    object cdsConsultaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 108
    end
    object cdsConsultaPGR_ID: TIntegerField
      FieldName = 'PGR_ID'
      Required = True
    end
  end
end
