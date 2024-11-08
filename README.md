# BASE_ANIMAIS

# Atividade: Base de Dados Animais
## Passo 1: Duplicar a Base de Dados

```sql
CREATE DATABASE animais_duplicados;
USE animais_duplicados;

-- Copiar todas as tabelas da base original
CREATE TABLE tabela_exemplo LIKE animais.tabela_exemplo; 
INSERT INTO tabela_exemplo SELECT * FROM animais.tabela_exemplo;
```

## Passo 2: Alterações na Base de Dados

1. **Altere o nome do Pateta para Goofy:**
   ```sql
   UPDATE animais SET nome = 'Goofy' WHERE nome = 'Pateta';
   ```

2. **Altere o peso do Garfield para 10 kilogramas:**
   ```sql
   UPDATE animais SET peso = 10 WHERE nome = 'Garfield';
   ```

3. **Altere a cor de todos os gatos para laranja:**
   ```sql
   UPDATE animais SET cor = 'laranja' WHERE especie = 'gato';
   ```

4. **Crie um campo altura para os animais:**
   ```sql
   ALTER TABLE animais ADD COLUMN altura DECIMAL(5, 2);
   ```

5. **Crie um campo observação para os animais:**
   ```sql
   ALTER TABLE animais ADD COLUMN observacao TEXT;
   ```

## Passo 3: Remoções na Base de Dados

1. **Remova todos os animais que pesam mais que 200 kilogramas:**
   ```sql
   DELETE FROM animais WHERE peso > 200;
   ```

2. **Remova todos os animais cujo nome inicie com a letra ‘C’:**
   ```sql
   DELETE FROM animais WHERE nome LIKE 'C%';
   ```

3. **Remova o campo cor dos animais:**
   ```sql
   ALTER TABLE animais DROP COLUMN cor;
   ```

4. **Aumente o tamanho do campo nome dos animais para 80 caracteres:**
   ```sql
   ALTER TABLE animais MODIFY COLUMN nome VARCHAR(80);
   ```

5. **Remova todos os gatos e cachorros:**
   ```sql
   DELETE FROM animais WHERE especie IN ('gato', 'cachorro');
   ```

6. **Remova o campo data de nascimento dos animais:**
   ```sql
   ALTER TABLE animais DROP COLUMN data_nascimento;  -- Substitua pelo nome correto da coluna
   ```

7. **Remova todos os animais:**
   ```sql
   DELETE FROM animais;
   ```

8. **Remova a tabela especies:**
   ```sql
   DROP TABLE IF EXISTS especies;
   ```
