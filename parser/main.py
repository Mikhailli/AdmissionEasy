import requests
from bs4 import BeautifulSoup

url = "https://vuzopedia.ru/vuz/2554/spec"

base_url = "https://vuzopedia.ru"

urls_for_page_of_speciality = ["https://vuzopedia.ru/vuz/2554/spec?page=1",
                               "https://vuzopedia.ru/vuz/2554/spec?page=2",
                               "https://vuzopedia.ru/vuz/2554/spec?page=3",
                               "https://vuzopedia.ru/vuz/2554/spec?page=4",
                               "https://vuzopedia.ru/vuz/2554/spec?page=5",
                               "https://vuzopedia.ru/vuz/2554/spec?page=6",
                               "https://vuzopedia.ru/vuz/2554/spec?page=7",
                               "https://vuzopedia.ru/vuz/2554/spec?page=8",
                               "https://vuzopedia.ru/vuz/2554/spec?page=9",
                               "https://vuzopedia.ru/vuz/2554/spec?page=10"]

institutes_and_specialities = {'Институт космических и информационных технологий':
                                   ['Автоматизация технологических процессов и производств',
                                    'Информатика и вычислительная техника',
                                    'Информационная безопасность',
                                    'Информационная безопасность автоматизированных систем',
                                    'Информационные системы и технологии',
                                    'Компьютерная безопасность',
                                    'Прикладная информатика',
                                    'Прикладная математика',
                                    'Программная инженерия',
                                    'Системный анализ и управление',
                                    'Управление в технических системах'],
                               'Институт цветных металлов и материаловедения':
                                   ['Автоматизация технологических процессов и производств',
                                    'Горное дело', 'Материаловедение и технологии материалов',
                                    'Металлургия', 'Техносферная безопасность',
                                    'Фундаментальная и прикладная химия',
                                    'Химия'],
                               'Институт архитектуры и дизайна':
                                   ['Архитектура', 'Градостроительство', 'Дизайн', 'Дизайн архитектурной среды'],
                               'Институт управления бизнес-процессами и экономики':
                                   ['Бизнес-информатика', 'Менеджмент', 'Прикладная информатика',
                                    'Экономическая безопасность'],
                               'Институт фундаментальной биологии и биотехнологии':
                                   ['Биология', 'Физика'],
                               'Институт экологии и географии':
                                   ['География', 'Экология и природопользование'],
                               'Торгово-экономический институт':
                                   ['Гостиничное дело', 'Продукты питания из растительного сырья', 'Сервис',
                                    'Таможенное дело', 'Технология продукции и организация общественного питания',
                                    'Товароведение', 'Торговое дело'],
                               'Институт экономики, управления и природопользования':
                                   ['Государственное и муниципальное управление', 'Управление персоналом', 'Экономика',
                                    'Экономическая безопасность'],
                               'Гуманитарный институт':
                                   ['Документоведение и архивоведение', 'Искусства и гуманитарные науки', 'История',
                                    'Прикладная информатика', 'Реклама и связи с общественностью', 'Религиоведение',
                                    'Социально-культурная деятельность', 'Философия'],
                               'Институт филологии и языковой коммуникации':
                                   ['Журналистика', 'Лингвистика', 'Перевод и переводоведение', 'Филология'],
                               'Институт инженерной физики и радиоэлектроники':
                                   ['Инноватика', 'Инфокоммуникационные технологии и системы связи',
                                    'Конструирование и технология электронных средств', 'Радиотехника',
                                    'Радиоэлектронные системы и комплексы', 'Физика'],
                               'Политехнический институт':
                                   ['Конструкторско-технологическое обеспечение машиностроительных производств',
                                    'Материаловедение и технологии материалов', 'Машиностроение',
                                    'Мехатроника и робототехника', 'Наземные транспортно-технологические комплексы',
                                    'Стандартизация и метрология', 'Теплоэнергетика и теплотехника',
                                    'Технологические машины и оборудование', 'Технология транспортных процессов',
                                    'Технология художественной обработки материалов', 'Техносферная безопасность',
                                    'Управление качеством',
                                    'Эксплуатация транспортно-технологических машин и комплексов',
                                    'Электроэнергетика и электротехника'],
                               'Институт математики и фундаментальной информатики':
                                   ['Математика', 'Математика и компьютерные науки',
                                    'Прикладная математика и информатика'],
                               'Юридический институт':
                                   ['Международные отношения', 'Социальная работа', 'Юриспруденция'],
                               'Институт гастрономии':
                                   ['Менеджмент'],
                               'Военно-инженерный институт':
                                   ['Наземные транспортно-технологические средства',
                                    'Специальные радиотехнические системы'],
                               'Институт нефти и газа':
                                   ['Нефтегазовое дело', 'Пожарная безопасность', 'Прикладная геология',
                                    'Технологические машины и оборудование', 'Технология геологической разведки',
                                    'Транспортные средства специального назначения', 'Химическая технология', 'Химия',
                                    'Эксплуатация транспортно-технологических машин и комплексов'],
                               'Институт педагогики, психологии и социологии':
                                   ['Педагогическое образование', 'Прикладная информатика', 'Психология',
                                    'Психолого-педагогическое образование', 'Социология'],
                               'Институт физической культуры, спорта и туризма':
                                   ['Педагогическое образование (с двумя профилями подготовки)',
                                    'Рекреация и спортивно-оздоровительный туризм', 'Туризм', 'Физическая культура'],
                               'Институт горного дела, геологии и геотехнологий':
                                   ['Прикладная геология', 'Технологические машины и оборудование',
                                    'Технология геологической разведки'],
                               'Инженерно-строительный институт':
                                   ['Природообустройство и водопользование', 'Строительство',
                                    'Строительство уникальных зданий и сооружений']}

# response = requests.get(url)

# html = response.text

# soup = BeautifulSoup(html, "html.parser")

# titles = soup.select("a.spectittle")

# speciality_hrefs_titles = []

#all_forms = set()

for url in urls_for_page_of_speciality:
    response = requests.get(url)
    html = response.text
    soup = BeautifulSoup(html, "html.parser")
    education_forms = soup.select("div.itemSpecAll")
    for education_form in education_forms:
        tag_i = (education_form.select_one("div i"))
        title = education_form.select_one("a.spectittle")
        ege = education_form.select_one("div.egeInVuzProg")
        ege_set = ege.contents[1].contents[0].split(',')
        tooltips = education_form.select("a.tooltipq")
        if title.text == "Наземные транспортно-технологические средства" or title.text == "Специальные радиотехнические системы" \
                or title.text == "Декоративно-прикладное искусство и народные промыслы"\
                or title.text == "Культурология"\
                or title.text == "Приборостроение"\
                or title.text == "Техническая физика"\
                or title.text == "Техническая эксплуатация транспортного радиооборудования"\
                or title.text == "Электроника и наноэлектроника"\
                or title.text == "Ядерные физика и технологии":
            break
        cost = tooltips[0].text.split(" ")[1]
        year = tooltips[1].text[:4]
        budget_score = tooltips[2].text.split(" ")[1]
        if budget_score == '-':
            budget_score = 0
        budget_count = tooltips[4].contents[0].replace(' ', '')[:-4]
        paid_score = tooltips[5].text.split(" ")[1][:-8].replace('мин', '')
        paid_count = tooltips[7].text.split(" ")[0]
        info = tag_i.text.replace(' ', '').split('|')
        level_of_education = info[0]
        form_of_education = info[1].split(',')
        counter = 0
        for form in form_of_education:
            if form == 'Очная':
                form_of_education[counter] = 'Очно'
            if form == 'Заочная':
                form_of_education[counter] = 'Заочно'
            if form == 'Очно-заочная':
                form_of_education[counter] = 'Очно-заочно'
            counter += 1
        full_form = ""
        for form in form_of_education:
            full_form += form
            full_form += ", "
        full_form = full_form[:-2]
        # all_forms.add(full_form)
        # print(all_forms)
        institute_name = ""
        for key in institutes_and_specialities:
            if title.text in institutes_and_specialities[key]:
                institute_name = key

        for eg in ege_set:
            print(f"""BEGIN
            IF NOT EXISTS (SELECT * FROM AreaOfStudySubject
                        WHERE AreaOfStudyId = (SELECT Id FROM AreaOfStudy WHERE Title = N'{title.text}') and
                       SubjectId = (SELECT Id FROM [Subjects] WHERE Title = N'{eg.strip()}'))
            BEGIN
                INSERT INTO AreaOfStudySubject(AreaOfStudyId, SubjectId)
                VALUES ((SELECT Id FROM AreaOfStudy WHERE Title = N'{title.text}'), (SELECT Id FROM [Subjects] WHERE Title = N'{eg.strip()}'))
            END
     END""")
#        print(f'{cost} {year} {budget_score} {budget_count} {paid_score} {paid_count} {level_of_education} {full_form} {title.text} {institute_name}')
#         print(f"""BEGIN
# IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
#                    WHERE Cost = {cost} and
# 				   NumberOfPlacesOnBudget = {budget_count} and
# 				   PassingScoreOnBudget = {budget_score} and
# 				   NumberOfPlacesOnPaid = {paid_count} and
# 				   PassingScoreOnPaid = {paid_score} and
# 				   [Year] = 2022)
# 		BEGIN
# 			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
# 			VALUES ({cost}, {budget_count}, {budget_score}, {paid_count}, {paid_score}, {year})
# 			SELECT @id = SCOPE_IDENTITY()
# 		END
# END
#
# BEGIN
# IF NOT EXISTS (SELECT * FROM AreaOfStudy
#                    WHERE Title = N'{title.text}' and
# 				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'{institute_name}') and
# 				   AdditionalInformationAboutAreaOfStudyId = @id and
# 				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'{full_form}') and
# 				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'{level_of_education}'))
# 		BEGIN
# 			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
# 			VALUES (N'{title.text}', (SELECT Id FROM Institute WHERE Title = N'{institute_name}'), @id,
# 			(SELECT Id FROM FormOfEducation WHERE Title = N'{full_form}'),
# 			(SELECT Id FROM LevelOfEducation WHERE Title = N'{level_of_education}'))
# 		END
# END""")

   # titles = soup.select("a.spectittle")
   # for title in titles:
   #     speciality_hrefs_titles.append((title["href"], title.text))

# for speciality_href_title in speciality_hrefs_titles:
#    print(speciality_href_title)


# d = {}
# for speciality_href_title in speciality_hrefs_titles:
#    response = requests.get(base_url + speciality_href_title[0])
#    html = response.text
#    soup = BeautifulSoup(html, "html.parser")
#    titles = soup.select("div.newInfooItem")
#    for title in titles:
#        institute = title.select_one("div")
#        key_is_contain = False
#        for key in d:
#            if key == institute.text:
#                key_is_contain = True
#                break
#        if key_is_contain:
#            if not speciality_href_title[1] in d[key]:
#                d[key].append(speciality_href_title[1])
#        else:
#            d[institute.text] = [speciality_href_title[1]]

# for key in d:
#    print(key)
#    print(d[key])



subjects = ['вступительные', 'математика/обществознание', 'математика (профиль)',
            'обществознание/информатика/иностранный язык', 'математика/география', 'география',
            'обществознание/иностранный язык', 'физика/информатика', 'история', 'литература', 'математика/биология',
            'физика/информатика', 'математика/история', 'информатика/география/иностранный язык',
            'обществознание/история', 'обществознание/биология/иностранный язык', 'обществознание',
            'биология', 'история/информатика/иностранный язык', 'иностранный язык', 'обществознание/литература',
            'математика/информатика', 'история/иностранный язык', 'физика/химия/информатика', 'математика/химия',
            'обществознание/история/иностранный язык', 'химия', 'обществознание/история/литература', 'иностранный язык',
            'русский', 'физика', 'физика/информатика/иностранный язык', 'русский']

all_forms = ['Заочно, Очно', 'Очно, Очно-заочно', 'Очно, Заочно, Очно-заочно', 'Очно, Заочно', 'Очно']

# for form in all_forms:
#     print(f"""BEGIN
# IF NOT EXISTS (SELECT * FROM [FormOfEducation]
#                    WHERE Title = N'{form}')
# 		BEGIN
# 			INSERT INTO [FormOfEducation](Title)
# 			VALUES (N'{form}')
# 		END
# END""")

# for sub in subjects:
#     print(f"""BEGIN
# IF NOT EXISTS (SELECT * FROM Subjects
#                    WHERE Title = N'{sub.capitalize()}')
# 		BEGIN
# 			INSERT INTO Subjects(Title)
# 			VALUES (N'{sub.capitalize()}')
# 		END
# END""")

# for key in institutes_and_specialities:
#     print(f"""
#
# BEGIN
#    IF NOT EXISTS (SELECT * FROM Institute
#                    WHERE UniversityId = 1
#                    AND Title = N'{key}')
# 		BEGIN
# 			INSERT INTO Institute(UniversityId, Title)
# 			VALUES (1, N'{key}')
# 		END
# END""")
