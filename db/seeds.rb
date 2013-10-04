#encoding: utf-8

fcm    = Instituicao.where(:nome => 'FCM').first_or_create
facisa = Instituicao.where(:nome => 'FACISA').first_or_create
esac   = Instituicao.where(:nome => 'ESAC').first_or_create

Curso.create([
  { codigo: 201, nome: 'ENFERMAGEM', instituicao: fcm },
  { codigo: 202, nome: 'FISIOTERAPIA', instituicao: fcm },
  { codigo: 203, nome: 'MEDICINA', instituicao: fcm },
  { codigo: 204, nome: 'MEDICINA', instituicao: fcm },
  { codigo: 301, nome: 'COMÉRCIO EXTERIOR', instituicao: facisa },
  { codigo: 302, nome: 'ADMINISTRAÇÃO - HABILITAÇÃO EM GESTÃO DE NEGÓCIOS', instituicao: facisa },
  { codigo: 303, nome: 'ADMINISTRAÇÃO - HABILITAÇÃO EM MARKETING', instituicao: facisa },
  { codigo: 304, nome: 'TURISMO', instituicao: facisa },
  { codigo: 305, nome: 'DIREITO', instituicao: facisa },
  { codigo: 306, nome: 'ARQUITETURA E URBANISMO', instituicao: facisa },
  { codigo: 308, nome: 'SISTEMAS DE INFORMAÇÃO', instituicao: facisa },
  { codigo: 309, nome: 'ADMINISTRAÇÃO', instituicao: facisa },
  { codigo: 401, nome: 'CIÊNCIAS AERONÁUTICAS', instituicao: esac },
  { codigo: 501, nome: 'PRODUÇÃO AUDIOVISUAL', instituicao: facisa },
  { codigo: 502, nome: 'JOGOS DIGITAIS ', instituicao: facisa },
  { codigo: 503, nome: 'CONSTRUÇÃO DE EDIFÍCIOS', instituicao: facisa }
])
