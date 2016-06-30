-- phpMyAdmin SQL Dump
-- version 4.1.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 30, 2016 at 12:50 PM
-- Server version: 5.6.29-log
-- PHP Version: 5.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `my_polidoriscibetta`
--

-- --------------------------------------------------------

--
-- Table structure for table `assistenza`
--

CREATE TABLE IF NOT EXISTS `assistenza` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `descrizione` text,
  `id_categoria` varchar(100) NOT NULL,
  `tipo` varchar(100) DEFAULT NULL,
  `in_evidenza` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `assistenza`
--

INSERT INTO `assistenza` (`id`, `nome`, `descrizione`, `id_categoria`, `tipo`, `in_evidenza`) VALUES
(1, 'Attivazione linea di casa', 'Richiedere l’attivazione di una linea telefonica di casa è molto semplice, puoi:\n\nrichiederla online\nchiamare il Servizio Clienti linea fissa 187\nrecarti presso un Negozio TIM.\nVerifica la modalità di attivazione consultando on line le varie offerte disponibili.\n\nI dati necessari sono:\n\nnome e cognome\ncodice fiscale\nindirizzo dell''abitazione per cui richiedi l''installazione della linea\nun recapito telefonico di cellulare\nindirizzo email (facoltativo).\nIl nostro personale tecnico ti contatterà quanto prima per concordare l’appuntamento per l’installazione dell’impianto telefonico.', 'linea', 'Fisso', 1),
(2, 'Trasloco', 'Il trasloco è un''operazione che ti consente di spostare la tua linea telefonica presso una nuova abitazione, nella stessa città o in una città diversa.\nPuoi gestirla direttamente online, basta registrarsi all’Area Clienti!', 'linea', 'Fisso', 0),
(3, 'Variazione abbonamento', 'Se hai cessato la tua attività professionale, puoi richiedere la variazione del tuo contratto di abbonamento telefonico.\r\nPer richiedere la variazione chiama il Servizio Clienti 191.\r\n\r\nCon la richiesta della trasformazione del contratto dalla categoria Affari (“A”) alla categoria Residenziale\r\n (“B”) il costo del tuo abbonamento mensile passerà da:\r\n\r\n22,50 € (IVA esclusa) a 17,54 € (IVA al 22% inclusa), in caso di linea telefonica di base\r\n31,00 € (IVA esclusa) a 20,17 € (IVA al 22% inclusa), in caso di linea ISDN.', 'linea', 'Fisso', 0),
(4, 'Restituzione prodotti', 'Per cessare il noleggio di un prodotto, con la conseguente interruzione del relativo abbonamento, basta chiamare il Servizio Clienti linea fissa 187 e poi consegnare o spedire il prodotto insieme al modulo di accompagnamento che puoi scaricare da questa pagina.\nSe hai chiesto il recesso dal Contratto di Noleggio e Manutenzione devi restituire il prodotto in noleggio entro e non oltre 30 giorni dalla data della richiesta di cessazione/recesso del contratto, e consegnarlo presso i seguenti Negozi TIM:\n\nROMA:           Viale Liegi, 31\nMILANO:        Piazza Cordusio snc - ang. Via Broletto\nNAPOLI:         Centro Direzionale - Isola A4\nPALERMO:     Via della libertà, 37/d\nTREVISO:       Via XX Settembre, 2\noppure spedirlo a mezzo pacco postale a: \n\n        Telecom Italia S.p.A. c/o Geodis Logistics\n        Magazzino Reverse A22\n        Piazzale Giorgio Ambrosoli snc\n        27015 Landriano PV\n\n', 'linea', 'Fisso', 0),
(5, 'Recesso', 'Per potersi avvalere del diritto di ripensamento inerente a richieste di:\r\n\r\nATTIVAZIONE NUOVA LINEA\r\nPASSAGGIO DA ALTRO OPERATORE\r\nATTIVAZIONE OFFERTA/SERVIZIO SU LINEA GIA’ TIM\r\nACQUISTO/NOLEGGIO DI PRODOTTI\r\n\r\nPuoi contattare il servizio clienti al 187 o scaricare  il modulo di recesso ("ripensamento" entro 14 giorni) e inviarcelo completo.', 'linea', 'Fisso', 0),
(6, 'Subentro', 'Il subentro ti permette di modificare l''intestazione di una linea telefonica attiva nella stessa sede dove si trova l''impianto garantendo così la continuità nell''emissione delle fatture. La modifica dell''intestazione è possibile solo con il consenso dell''attuale titolare della linea.\nIl subentro può essere a titolo gratuito (subentro familiare, subentro familiare richiesto da erede a seguito decesso titolare della linea, subentro tra coniugi separati), oppure oneroso. Chi subentra assume a proprio carico ogni onere contrattuale del precedente intestatario.', 'linea', 'Fisso', 0),
(7, 'Tutto sulla tua SIM', 'Tutto ciò che devi sapere per gestire al meglio la tua SIM:\n\nIl PIN (Personal Identity Number) è un codice numerico di 4 cifre che ti consente, se regolarmente impostato, di proteggere il telefonino da utilizzi illeciti. Viene infatti richiesto dal telefonino al momento dell’accensione; il codice PIN è personalizzabile. Il PUK (Personal Unblocking Key) è un codice di sblocco fisso e non modificabile che serve per sbloccare la SIM a seguito dell''errata digitazione del codice PIN per 3 volte di seguito.\nOgni TIM Card o SIM in abbonamento viene venduta accompagnata da due codici di sicurezza, il PIN e il PUK. Puoi trovare i codici PIN e PUK sul retro del supporto di plastica, che ti viene consegnato al momento dell’acquisto della tua SIM, sotto la striscia argentata. I codici PIN e PUK sono strettamente personali ed il Servizio Clienti 119 non potrà fornirteli in caso di perdita o dimenticanza.\nSe sei in possesso del PUK, la procedura da seguire per lo sblocco della SIM è la seguente: **05*PUK*PIN*PIN#\nSe hai smarrito il PUK, dovrai necessariamente recarti in un Negozio TIM per effettuare la sostituzione della SIM mantenendo il tuo numero telefonico. Ti ricordiamo che il Servizio Clienti 119 per motivi di sicurezza non ha la possibilità di fornirti il PUK, trattandosi di un codice strettamente personale.\nSe hai digitato il codice PUK in maniera errata per dieci volte consecutive la tua SIM non può più essere sbloccata. Dovrai necessariamente recarti in un Negozio TIM per effettuare un cambio carta. Ti sarà consegnata una nuova SIM mantenendo lo stesso numero telefonico.', 'linea', 'Mobile', 0),
(8, 'Passaggio da abbonamento a ricaricabile', 'Per passare la tua utenza TIM da abbonamento a servizio ricaricabile puoi compilare il modulo di “Richiesta di migrazione da abbonamento a ricaricabile”. Il modulo è disponibile in formato pdf nella sezione Moduli e può essere scaricato direttamente dalla sottosezione “clienti con abbonamento”.\nPotrai inviare il modulo compilato con la richiesta di cessazione del contratto di abbonamento e la specificata volontà di passare verso servizio ricaricabile (indicando il profilo e l''eventuale opzione) e la modalità di rimborso ACI (assegno/accredito su linea ricaricabile), al numero di fax dedicato 800600119.\n\n', 'linea', 'Mobile', 0),
(9, 'LoSai e ChiamaOra di TIM', 'LoSai di TIM, ti informa sulle chiamate ricevute mentre hai il telefonino spento, non raggiungibile, quando sei occupato in un''altra conversazione e negli altri casi in cui non è stato possibile contattarti.\r\nQuando torni disponibile riceverai un SMS di notifica, il cui mittente è il numero di chi ti ha cercato e nel testo è indicata la data e l''ora della chiamata ricevuta.\r\nSe il numero di chi ti ha cercato è salvato nella tua rubrica, vedrai direttamente il suo nome come mittente e potrai richiamare, o inviare un SMS, direttamente dopo aver letto il messaggio di notifica.\r\nCon LoSai di TIM ricevi un SMS per ogni chiamata persa, sia quando sei in Italia sia quando ti trovi all’Estero senza costi aggiuntivi rispetto al costo dell’abbonamento.\r\n \r\n\r\nChiamaOra di TIM, ti permette di sapere sempre quand’è il momento giusto per richiamare chi stai cercando.\r\nQuando la persona che stai chiamando al momento non può rispondere, perché ha il telefonino spento, fuori copertura o è occupata in un’altra conversazione, il servizio ChiamaOra di TIM ti consente\r\n di ricevere un SMS di avviso, oppure di prenotare la richiamata automatica, non appena la persona cercata torna contattabile.\r\nL’utilizzo del ChiamaOra di TIM è semplicissimo!\r\nQuando chiami un tuo amico ed ascolti la fonia di cortesia del servizio puoi decidere di:\r\nchiudere subito la chiamata e ricevere un SMS di avviso quando il tuo amico tornerà contattabile (nel testo dell''SMS sarà indicata l’ora in cui è tornato raggiungibile).\r\nse invece vuoi prenotare la richiamata automatica, attendendo in linea, quando la persona chiamata tornerà raggiungibile il tuo telefonino squillerà e, rispondendo, ChiamaOra di TIM richiamerà per te la persona cercata.\r\nLa richiamata sarà tariffata in base al tuo piano tariffario. Se invece hai attivato una delle opzioni tariffarie di TIM (voce, SMS, Internet), le richiamate sono tariffate secondo le condizioni previste da tali offerte.', 'linea', 'Mobile', 0),
(10, 'MyTim Fisso', 'Registrandoti al MyTIM Fisso o scaricando l’applicazione per smartphone e tablet avrai  a disposizione tutte le informazioni relative alla tua linea telefonica.\n\nPotrai visualizzare i servizi e le offerte attivi sulla tua linea telefonica, pagare le tue fatture e avere informazioni relative al traffico.', 'linea', 'Cosa puoi fare online', 1),
(11, 'Come registrarsi a MyTim Fisso', 'Scopri come registrarti alla nostra Area Clienti per gestire online la tua linea, la fattura e tutti i servizi compresi.', 'linea', 'Cosa puoi fare online', 1),
(12, 'Come entrare in TIM con la tua linea mobile', 'Il servizio di portabilità ti consente di cambiare Operatore telefonico portando con te il tuo numero di telefonino.\nScopri come Passare a TIM scegliendo la modalità che preferisci tra quelle che TIM ti mette a disposizione:online, con operatore, negozio.\nIl servizio di portabilità (MNP, cioè Mobile Number Portability) ti consente di cambiare Operatore telefonico portando con te il tuo numero di telefonino. \n\nPotrai passare a TIM:\n\n   1.   direttamente al telefono con un nostro operatore che ti fornirà tutti i dettagli sulle nostre Offerte. Chiedi il ricontatto di un nostro operatore, Entra in TIM!\n\n   2.   direttamente online, cliccando sul tasto “Attiva” dell’Offerta scelta. Per scoprire i vantaggi e le modalità consulta la Guida.\n\n   3.   presso un Negozio TIM portando con te un documento d''identità e la SIM del tuo attuale operatore.\n\n\nl momento della richiesta di portabilità riceverai una TIM Card con una numerazione provvisoria, con la quale potrai parlare, inviare SMS e utilizzare tutti gli altri servizi TIM, usufruendo da subito della tua nuova offerta.\n\nA portabilità completata (non prima di 2 giorni lavorativi dalla richiesta), in automatico, il tuo numero andrà a sovrascrivere la numerazione “transitoria” presente sulla nuova SIM di TIM.\n\nLa suddetta operazione determina la proroga della durata della TIM Card di 13 mesi, decorrenti dalla data in cui la portabilità è completata. Ti ricordiamo che nel corso del tredicesimo mese il servizio funzionerà solo per la ricezione delle chiamate e dei messaggi.', 'linea', 'Entrare in TIM', 0),
(14, 'Come leggere la fattura della linea fissa', 'La fattura della linea fissa è semplice e facile da leggere perché disegnata prendendo spunto dai suggerimenti dei clienti. La veste grafica, moderna e raffinata, utilizza un linguaggio sempre più chiaro per l’esposizione delle voci di spesa, facilitando la lettura di tutte le informazioni di cui hai bisogno e garantendo maggiore trasparenza nei contenuti e negli importi.', 'costi', 'Fisso', 0),
(15, 'Come pagare la fattura della linea fissa', 'Puoi pagare le fatture TIM in qualsiasi momento utilizzando una carta di credito  (American Express, Diners, Visa, Mastercard emesse in Italia). ', 'costi', 'Fisso', 0),
(16, 'Verifica credito residuo e bonus disponibili per i clienti Prepagati', 'Il credito residuo disponibile, le offerte e lo stato dei bonus attivi sulla tua linea ricaricabile, sono consultabili attraverso le seguenti modalità:\n\nDirettamente dal tuo Smartphone, accedendo all’app MyTIM Mobile, attualmente disponibile in download gratuito nelle versioni per iPhone e per smartphone con sistema operativo Android.\nDirettamente online sul sito tim.it nella sezione MyTIM Mobile riservata ai nostri clienti che ti permette di verificare il credito residuo, le quantità di minuti, SMS, GB ancora disponibili, i bonus in euro  eventualmente presenti ed effettuare variazioni sulla tua linea telefonica;\nChiamando il numero gratuito 40916, per il credito residuo. Inoltre digitando il tasto 1 puoi conoscere le offerte attive, la quantità di minuti, SMS, GB ancora disponibili e i bonus in euro eventualmente presenti;\nAttraverso il servizio gratuito 119sms; inviando un sms al 119 “a testo libero”(ad esempio “qual è il mio credito residuo”) il servizio ti risponderà con un sms con le informazioni richieste;\nAttraverso l’attivazione del servizio gratuito "TIM Ti Avvisa - info sms" che ti permette di conoscere il costo dell’ultima chiamata nazionale effettuata e il credito residuo aggiornato in tempo reale grazie alla ricezione di un sms direttamente sul tuo telefonino oppure con il servizio “TIM Ti Avvisa – offerte” puoi essere informato con un sms gratuito quando il consumo delle tue offerte attive raggiunge la percentuale da te scelta;', 'costi', 'Mobile', 0),
(17, 'Dettaglio delle chiamate per i clienti ricaricabili', 'Il servizio "documentazione traffico" ti offre la possibilità di avere il dettaglio di ogni telefonata, connessione dati o altro evento, effettuato dalla tua linea (*). Per ogni evento viene fornita l’indicazione della data/ora di effettuazione, del costo, della tipologia e del numero chiamato se si tratta di traffico voce o sms (con le ultime tre cifre asteriscate - L. 171/98 "Tutela vita privata nelle telecomunicazioni"). \r\n\r\nLa documentazione del traffico è sempre disponibile in MyTIM Mobile e consultabile fino a due mesi antecedenti la data di consultazione del traffico se utilizzi una linea ricaricabile, in diversi formati facilmente consultabili ed archiviabili (esempio pdf). \r\n\r\nÈ comunque possibile richiedere l’invio di un tabulato cartaceo del traffico pregresso (equivalente al pdf già disponibile in MyTIM Mobile), o l’invio di un tabulato del traffico pregresso in chiaro (deve essere in questo caso specificato), purché rientri nei periodi sopra indicati. In questo caso dovrai compilare ed inviare l''apposito modulo di "Richiesta Documentazione Traffico" che puoi scaricare in formato pdf dalla sezione Moduli, selezionando la sottosezione Ricaricabile di riferimento. \r\n ', 'costi', 'Mobile', 0),
(18, 'MyTim Mobile (controllo costi)', 'In MyTIM Mobile hai a disposizione tutte le informazioni che riguardano la tua linea mobile.\r\n\r\nPuoi tenerti costantemente aggiornato sulle offerte che TIM ha pensato per  te, visualizzare il tuo traffico telefonico, verificare il credito residuo ed effettuare ricariche, visualizzare e pagare online la tua fattura.\r\n\r\nREGISTRATI\r\n', 'costi', 'Cosa puoi fare online', 1),
(19, 'Verifica online il tuo traffico', 'Accedendo alla sezione MyTIM Mobile del nostro sito è possibile verificare il dettaglio dei consumi relativi al traffico effettuato.\r\n\r\nSe hai una linea prepagata: è possibile verificare il dettaglio del traffico effettuato a partire dal giorno precedente e fino agli ultimi 2 mesi rispetto alla data di consultazione.\r\n \r\nSe hai sottoscritto un abbonamento: oltre a verificare il saldo dei consumi in corso di fatturazione, è possibile verificare online e scaricare il pdf del traffico telefonico effettuato entro 90 gg. \r\ndalla data di scadenza della fattura di riferimento.', 'costi', 'Cosa puoi fare online', 1),
(20, 'Buono sconto per cambio telefono', 'Vuoi un nuovo smartphone?\n\nPortaci il tuo vecchio telefono, da oggi vale uno sconto sul nuovo!\n\nCon il servizio TIM Valuta puoi far valutare gratuitamente e senza impegno il tuo telefonino, smartphone o tablet.  Ricevi subito uno sconto da utilizzare come meglio desideri: per l’acquisto di un nuovo telefonino, smartphone, tablet, chiavetta, Internet Pack, oppure in Ricarica telefonica TIM. Il servizio è aperto a tutti!\n\n\n', 'supporto', 'Smartphone e Tablet', 0),
(21, 'Assistenza Tecnica Specializzata con SOS Smartphone', 'SOSsmartphone è il servizio di TIM per tutti i clienti, Ricaricabili o con Abbonamento, che permette di ricevere un’assistenza tecnica specializzata e personalizzata per la gestione del proprio smartphone o tablet.\n\nGrazie al servizio SOSsmartphone potrai parlare con un esperto che ti fornirà tutta la consulenza e l’assistenza “premium” di cui necessiti e che soprattutto sarà in grado di connettersi in remoto ed operare direttamente sul tuo dispositivo.\n\nI servizi che potrai ricevere con SOSsmartphone sono:\n\nsupporto per trasferimento dati in caso di cambio telefono: esempio trasferimento rubrica, foto, sms;\nconsulenza nell’utilizzo delle funzioni avanzate dello smartphone;\nassistenza specialistica sulle configurazioni avanzate dello smartphone e integrazione nella tua rete domestica;\ngestione e sincronizzazione dei tuoi contenuti multimediali;\nsupporto per garantire il massimo della sicurezza;\nconservazione e protezione dei tuoi dati;\ntrasferimento di contenuti;\naggiornamento del tuo smartphone;\neffettuazione check up.\n\n', 'supporto', 'Smartphone e Tablet', 1),
(23, 'Servizio mappe sul telefonino', 'Il servizio mappe è utilizzabile su numerosi telefoni di ultima generazione. In alcuni casi il software è già installato dal produttore, mentre in altri è possibile scaricare l’applicativo da Internet ed installarlo in un momento successivo all’acquisto. \r\n\r\nLa presenza di tale funzione varia secondo il modello e la versione software del telefonino. \r\nIl programma mappe è fruibile da tutti i telefonini con antenna GPS integrata. \r\n\r\nPer un corretto utilizzo, è importante sapere che la funzione mappe dal telefonino si avvale di una tecnologia particolare chiamata A-GPS, che implica la connessione ad Internet durante la fruizione del servizio. Se sei un cliente ricaricabile o con abbonamento, consulta la sezione dedicata alle offerte Internet e scegli quella più adatta alle tue esigenze . \r\nIn assenza di un’offerte specifica per il traffico dati verrà applicata  la tariffa base', 'supporto', 'Smartphone e Tablet', 0),
(24, 'TIMMusic', 'TIMmusic è la piattaforma di musica digitale di Telecomitalia dedicata a tutti i clienti che hanno uno smartphone/tablet TIM o una linea ADSL o Fibra  residenziale Telecom Italia o una chiavetta Internet TIM.\n\nCon TIMmusic puoi ascoltare milioni di brani in streaming senza limiti di tempo sul tuo smartphone e tablet o sul PC (clienti ADSL e Fibra Residenziale Telecom Italia o con chiavetta Internet TIM). Puoi  creare tue playlist personali o ascoltare quelle suggerite da dj e artisti famosi e condividere tutto sui principali social network. Il catalogo è sempre aggiornato con tutte le ultime uscite discografiche, spesso anche in anteprima esclusiva. E , se sei su mobile, non consumi GB perchè il traffico dati per l’ascolto di musica è incluso nel costo dell’abbonamento.', 'smartlife', NULL, 0),
(25, 'TIMReading', 'TIMreading è lo Store di TIM che permette di acquistare e leggere eBook, quotidiani e Magazine su PC, Tablet e Smartphone.\n\nI contenuti disponibili sullo store sono:\n\n11 quotidiani nazionali e sportivi, completi di allegati ed edizioni locali, disponibili in abbonamento settimanale o mensile sul proprio PC, Tablet o Smartphone, per seguire l’informazione dalle prime ore del mattino\n\noltre 50 Magazine in copia singola o in abbonamento, per scoprire le nuove tendenze e nuove mete, seguire i gossip e l’attualità\n\noltre 75.000 eBook tra best seller, gialli, romanzi rosa, classici e tanto altro, per passare il tempo leggendo un buon libro.\n\n \n\nPuoi attivare diverse offerte per scoprire il servizio TIMreading:\n\nabbonamenti a quotidiani e abbonamenti o copie singole di magazine dal sito TIMreading\n\npresso i Negozi TIM o sul sito TIM l’abbonamento ad un quotidiano a partire da 15,99€/mese, con i primi 3 mesi gratis o l’abbonamento “I Love Mags” per scegliere ogni mese le riviste che preferisci.\n\npresso i Negozi TIM l’abbonamento ad una rivista a partire da 10,99€/mese e hai un secondo abbonamento a scelta in regalo\n\nogni eBook ha il proprio prezzo ed ogni giorno su TIMreading almeno un libro è offerto con oltre il 60% di sconto.', 'smartlife', NULL, 0),
(26, 'TIMGames', 'TIMgames è servizio TIM edicato al gaming che consente a tutti i clienti di scaricare su tablet e smartphone i migliori giochi on demand e in abbonamento per il mondo mobile.\n\nCon TIMgames avrai a disposizione una library di oltre 1500 giochi, aggiornata ogni settimana con nuovi titoli e giochi in offerta presenti nell’area promozioni dello store.\n\nTIMgames èaccessibile sia da App (scaricabile da Google Play) che da browser su www.timgames.it L’utente può scegliere la modalità di acquisto preferita tra on demand e abbonamento.\n\nIn particolare:\n\nOn demand: a partire da 0,49€, acquistando e scaricando un gioco sul proprio telefonino;\n\nIn abbonamento: con I Love Games Promo, a soli 2€ a settimana si possono scaricare senza limiti tutti i giochi presenti su TIMgames. Il primo mese è in promozione a solo 1€ a settimana.', 'smartlife', NULL, 0),
(27, 'TIMvision', 'TIMvision è la nuova risposta alle esigenze di intrattenimento per tutta la famiglia. E’ la TV interamente on demand di TIM che tramite una connessione ADSL Illimitata o Fibra ti permette di godere di migliaia di titoli: il grande cinema, le serie TV più appassionanti, i cartoni animati più amati e tanto altro ancora come documentari, reportage e musica.\r\n\r\n \r\n\r\nI clienti TIMvision possono accedere a:\r\n\r\nTIMvision TV\r\nVideostore\r\nFree\r\nReplay TV\r\nL''abbonamento TIMvision ti permette di guardare tutti i contenuti su PC, Smart TV o TV con Decoder, tablet e smartphone senza consumare Giga, quando e dove vuoi.', 'smartlife', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `categorie_assistenza`
--

CREATE TABLE IF NOT EXISTS `categorie_assistenza` (
  `id` varchar(100) NOT NULL,
  `numero` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `url_icona` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categorie_assistenza`
--

INSERT INTO `categorie_assistenza` (`id`, `numero`, `nome`, `url_icona`) VALUES
('linea', 1, 'Gestione Linea e Servizi', 'images/assistenza/categorie/linea.png'),
('costi', 2, 'Controllo Costi e Pagamenti', 'images/assistenza/categorie/costi.png'),
('supporto', 3, 'Supporto Tecnico e Configurazione', 'images/assistenza/categorie/supporto.png'),
('smartlife', 4, 'Smartlife', 'images/assistenza/categorie/smartlife.png');

-- --------------------------------------------------------

--
-- Table structure for table `categorie_prodotti`
--

CREATE TABLE IF NOT EXISTS `categorie_prodotti` (
  `id` varchar(100) NOT NULL,
  `numero` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `url_icona` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categorie_prodotti`
--

INSERT INTO `categorie_prodotti` (`id`, `numero`, `nome`, `url_icona`) VALUES
('smartphone', 1, 'Smartphone e Telefoni', 'images/prodotti/categorie/smartphone.png'),
('tablet', 2, 'Tablet e Computer', 'images/prodotti/categorie/tablet.png'),
('modem', 3, 'Modem e Networking', 'images/prodotti/categorie/modem.png'),
('TV', 4, 'TV e SmartLiving', 'images/prodotti/categorie/TV.png'),
('outlet', 5, 'Outlet', 'images/prodotti/categorie/outlet.png');

-- --------------------------------------------------------

--
-- Table structure for table `categorie_smartlife`
--

CREATE TABLE IF NOT EXISTS `categorie_smartlife` (
  `id` varchar(100) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `url_icona` varchar(100) NOT NULL,
  `url_banner` varchar(100) NOT NULL,
  `sottotitolo` varchar(2000) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `numero` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categorie_smartlife`
--

INSERT INTO `categorie_smartlife` (`id`, `nome`, `url_icona`, `url_banner`, `sottotitolo`, `tipo`, `numero`) VALUES
('TV', 'TV ed Entertainment', 'images/smartlife/categorie/TV.png', 'images/smartlife/categorie/01-tv-entertainment.jpg', 'SERIE TV, FILM, MUSICA, LIBRI, GIOCHI E CALCIO. Scopri il tipo di intrattenimento che preferisci.\nIl divertimento comincia subito! \nQuando vuoi e come vuoi.', 'Servizi offerti', 1),
('salute', 'Salute e Benessere', 'images/smartlife/categorie/salute.png', 'images/smartlife/categorie/02-salute-benessere.jpg', 'Prova gli ultimi wearables. Scopri come salute e benessere possono cambiare in meglio la tua vita.\nLibera la tua voglia di movimento. Condividi con gli amici i tuoi risultati. Il futuro &egrave; smart.', 'Prodotti e App', 2),
('casa', 'Casa e Famiglia', 'images/smartlife/categorie/casa.png', 'images/smartlife/categorie/03-casa-famiglia.jpg', 'Smart Life vuol dire anche una vita più semplice e sicura.\nAnche per la tua casa e i tuoi cari.\nIl divertimento comincia subito! \nQuando vuoi e come vuoi.', 'Soluzioni per la tua casa', 3),
('persona', 'Servizi alla Persona', 'images/smartlife/categorie/persona.png', 'images/smartlife/categorie/04-tim-personal.jpg', 'Un nuovo approccio al mondo dell''e-payment e dell''identità digitale. Potrai organizzare e gestire con semplicità e in tutta sicurezza i tuoi pagamenti digitali, il tuo archivio personale, custodire le password, le fatture, gli scontrini ed i referti medici.', 'Identità Digitale', 4);

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE IF NOT EXISTS `faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_assistenza` int(11) NOT NULL,
  `domanda` text NOT NULL,
  `risposta` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `id_assistenza`, `domanda`, `risposta`) VALUES
(1, 1, 'Quali documenti sono necessari?', 'Dovrai fornire in visione i seguenti documenti:\n\ndocumento di identità del titolare linea (carta identità, patente di guida con foto, passaporto);\ncodice fiscale del titolare linea;\ndocumentazione antiabusivismo, rappresentata da uno dei seguenti documenti:\ncopia di una recente fattura (luce, gas, acqua) anche se intestata ad altri precedenti soggetti, occupanti la medesima unità immobiliare per la quale è stata fatta richiesta di collegamento telefonico\n\noppure\n\ncopia della concessione/licenza edilizia.\n\noppure\n\ncopia della domanda di concessione in sanatoria corredata della prova dell''avvenuto pagamento delle somme dovute a titolo di oblazione (così come previsto dal 2° comma dell''art.45 della legge 28.2.85 n.47). Solo nel caso non fosse possibile presentare uno qualsiasi dei documenti, potrai produrre in sostituzione una "autodichiarazione sostitutiva di atto notorio" autenticata dal notaio o dal segretario comunale come previsto dall''art.4 della legge 4.1.68 e successive modificazioni ed integrazioni.'),
(2, 1, 'Quali sono le diverse tipologie di linea telefonica di casa?', '•    LINEA TELEFONICA PRINCIPALE: è una linea telefonica principale di tipo tradizionale per i clienti che non svolgono attività professionali intestata a qualunque componente del nucleo familiare anagrafico.\n•    LINEA TELEFONICA AGGIUNTIVA: è una linea telefonica aggiuntiva di tipo tradizionale intestata al medesimo titolare della linea principale, attivata nella stessa o in altra abitazione.\n•    LINEA ISDN: è una linea telefonica principale che si differenzia dalla linea di tipo tradizionale in quanto include alcuni servizi telefonici specifici.\n•    LINEA PER TRAFFICO ENTRANTE: è una linea telefonica di tipo tradizionale aggiuntiva a una linea principale, che consente la sola ricezione delle chiamate.\n•    LINEA IN FIBRA OTTICA: è la nuova linea per telefonare e navigare in Internet grazie all’alta velocità della fibra ottica, connettere contemporaneamente e con prestazioni elevate Tablet, PC, Smartphone e TV con  più applicazioni e dispositivi, vedere video anche in alta definizione senza attese né interruzioni.\n\nConsulta online le varie offerte disponibili.'),
(3, 1, 'Quanto costa attivare una linea telefonica di casa?', 'Il contributo per l’attivazione di una nuova linea tradizionale è pari a 97,60€ (IVA inclusa), salvo eventuali promozioni in corso.Con un costo di abbonamento mensile di 29 € (IVA inclusa) hai la linea di casa con incluse tutte le chiamate illimitate verso fissi e cellulari nazionali (TUTTO VOCE). Con un costo di abbonamento mensile di 19 € (IVA inclusa) hai la linea di casa con chiamate valorizzate a consumo (VOCE).\n\n\nNella sezione Offerte seleziona quella di tuo interesse anche per chiamare e navigare in Internet con ADSL e Fibra, verifica tutte le condizioni previste ed eventuali promozioni in corso sui contributi di attivazione (può essere previsto anche un contributo per l’attivazione di specifiche Offerte).Inoltre se domicili la fattura della linea fissa sul c/c bancario/postale o su carta di credito non ti sarà addebitato l’importo dell’anticipo conversazioni. Clicca qui per conoscere i dettagli.\n\nSe richiedi l’attivazione di una nuova linea o un trasloco di linea già attiva, che necessita di un collegamento telefonico attraverso opere speciali, in aree classificate “Nuclei Abitati” e “Case Sparse” dovrai corrispondere a TIM oltre al contributo di attivazione anche un contributo supplementare a fondo perduto (secondo quanto previsto dalla Delibera AGCOM 385/11/CONS). Il costo del contributo supplementare è calcolato sulla base del Listino allegato alla Delibera AGCOM 136/14/CONS e ti verrà comunicato preventivamente per fornirci l’esplicita accettazione. \n\nIn caso di richieste singole è pari al 30% del costo complessivo di installazione del collegamento. In caso di richieste contestuali (ossia sopraggiunte entro la fine lavori) che interessano lo stesso percorso di rete, la percentuale di contributo a carico dei clienti – limitatamente alle sole parti comuni dell’impianto - è pari al 50% del costo dell’impianto calcolato sulla base del medesimo listino e delle modalità previste dalla Delibera AGCOM n. 385/11/CONS, da ripartire equamente tra tutti i clienti che hanno contestualmente richiesto l’allacciamento alla rete. Relativamente alle restanti parti dell’impianto specifiche per ciascuna utenza il contributo dovuto da ciascun cliente resta determinato nella percentuale del 30%.\nL’importo del Contributo a fondo perduto può essere pagato in un’unica soluzione o fino a 24 rate mensili.\n\nPer la realizzazione dei collegamenti in fibra ottica che esulino dai normali standard tecnici per difficoltà realizzative e/o in presenza di richieste specifiche del Cliente, TIM si riserva di stimare un eventuale contributo economico supplementare alle condizioni standard da sottoporre a preventiva accettazione da parte del cliente. \n\nPer prendere visione delle relative Condizioni clicca qui.'),
(4, 1, 'Ho la linea telefonica di casa con un altro gestore ma vorrei rientrare in TIM, che cosa devo fare?', 'Per rientrare in TIM con la linea fissa, senza nessun disservizio e senza la necessità di comunicare il recesso direttamente al tuo attuale Operatore, è possibile inserire online la richiesta che implica di conseguenza la cessazione del rapporto contrattuale con il tuo attuale Operatore.\nPer il buon esito della richiesta, è necessario reperire presso il tuo attuale operatore il Codice di Migrazione ossia una stringa alfa-numerica che serve per indicare correttamente la tua linea telefonica e per avviare le procedure di passaggio in TIM.(Per maggiori informazione sul codice di migrazione leggi la faq "Che cos''è il Codice di Migrazione"). Se hai più numeri attivi associati ad un unico Codice di Migrazione dovranno essere riportati all''internodegli appositi campi. Il Codice di Migrazione è pubblicato nell’ultima fattura che hai ricevuto dal tuo attuale Operatore telefonico oppure lo potrai ottenere consultando il sito web o contattando il Call Center commerciale.\nIl Codice di Migrazione deve essere completo in ogni sua parte. Se in fattura trovi indicati due Codici diMigrazione, indicali entrambi. In caso contrario la procedura di passaggio non andrà a buon fine.Il passaggio in TIM avverrà con la tipologia di abbonamento al servizio telefonico da te scelto nella richiesta. Dal momento in cui TIM riceverà la tua richiesta verranno immediatamente avviate tutte le procedure necessarie  per la migrazione della linea telefonica verso TIM che ti contatterà se necessario per fissare un appuntamento  per l’attivazione del servizio presso la tua abitazione. A meno di eventuali problemi tecnici che ne impediscano l’attivazione, il servizio scelto sarà attivato da TIM con lo stesso numero telefonico da te attualmente utilizzato. Dopo circa 20 giorni potrai quindi riprendere ad \nutilizzare i servizi di TIM.Puoi chiamare gratuitamente il Servizio Clienti linea fissa 187 per conoscere le modalità di passaggio in TIM alternative.\n\nPer rientrare in TIM con la linea fissa, senza nessun disservizio e senza la necessità di comunicare il recesso direttamente al tuo attuale Operatore, è possibile inserire online la richiesta che implica di conseguenza la cessazione del rapporto contrattuale con il tuo attuale Operatore.\nPer il buon esito della richiesta, è necessario reperire presso il tuo attuale operatore il Codice di Migrazione ossia una stringa alfa-numerica che serve per indicare correttamente la tua linea telefonica e per avviare le procedure di passaggio in TIM.(Per maggiori informazione sul codice di migrazione leggi la faq "Che cos''è il Codice di Migrazione").\n\nSe hai più numeri attivi associati ad un unico Codice di Migrazione dovranno essere riportati all''interno degli appositi campi. Il Codice di Migrazione è pubblicato nell’ultima fattura che hai ricevuto dal tuo attuale Operatore telefonico oppure lo potrai ottenere consultando il sito web o contattando il Call Center commerciale.\nIl Codice di Migrazione deve essere completo in ogni sua parte. Se in fattura trovi indicati due Codici di Migrazione, indicali entrambi. In caso contrario la procedura di passaggio non andrà a buon fine.\nIl passaggio in TIM avverrà con la tipologia di abbonamento al servizio telefonico da te scelto nella richiesta. Dal momento in cui TIM riceverà la tua richiesta verranno immediatamente avviate tutte le procedure necessarie per la migrazione della linea telefonica verso TIM che ti contatterà se necessario per fissare un appuntamento per l’attivazione del servizio presso la tua abitazione.\nA meno di eventuali problemi tecnici che ne impediscano l’attivazione, il servizio scelto sarà attivato da TIM con lo stesso numero telefonico da te attualmente utilizzato. Dopo circa 20 giorni potrai quindi riprendere ad utilizzare i servizi di TIM.\nPuoi chiamare gratuitamente il Servizio Clienti linea fissa 187 per conoscere le modalità di passaggio in TIM alternative.'),
(5, 1, 'Ho la linea telefonica di casa con TIM ma l’ADSL con un altro gestore e vorrei attivare il servizio ADSL con TIM. Cosa devo fare?', 'E'' prevista la possibilità per i clienti di attivare un''offerta ADSL di TIM senza nessun disservizio e senza la necessità di comunicare il recesso direttamente al tuo attuale Operatore. Il passaggio del servizio ADSL a TIM non comporta alcun costo aggiuntivo oltre al pagamento dell''abbonamento mensile dell’offerta attivata. Per rientrare in TIM è possibile eseguire online la richiesta che implica di conseguenza la cessazione del rapporto contrattuale con il tuo attuale Operatore.\nPer il buon esito della richiesta, è necessario reperire presso il tuo attuale operatore che ti fornisce l’accesso ADSL il Codice di Migrazione. Questo codice è una stringa alfa-numerica che serve per indicare correttamente la linea telefonica e per avviare le procedure di passaggio. (Per maggiori informazione sul codice di migrazione leggi la faq "Che cos''è il Codice di Migrazione").\n\nSe hai più numeri attivi associati ad un unico Codice di Migrazione dovranno essere riportati all''interno degli  appositi campi. Il Codice di Migrazione è pubblicato nell’ultima fattura che hai ricevuto dal tuo attuale Operatore telefonico oppure lo potrai ottenere consultando il sito web o contattando il Call Center commerciale.\n\nIl Codice di Migrazione è pubblicato nell’ultima fattura che hai ricevuto dal tuo attuale operatore telefonico con  il quale hai servizio ADSL oppure lo potrai ottenere consultando il sito web o contattando il Call Center commerciale. Il Codice di Migrazione deve essere completo in ogni sua parte. Se in fattura trovi indicati due Codici di Migrazione, indicali entrambi. In caso contrario la procedura di passaggio non andrà a buon fine.\nDal momento in cui TIM riceverà la tua richiesta verranno immediatamente avviate tutte le procedure necessarie per la migrazione dell''ADSL verso TIM. TIM quindi procederà ad attivare l''offerta richiesta e, se necessario, ti contatterà per fissare un appuntamento per l’attivazione del servizio.\nA meno di eventuali problemi tecnici che ne impediscano l’attivazione, dopo circa 20 giorni potrai quindi utilizzare i  servizi ADSL di TIM.\n\nL’eventuale esercizio del diritto di recesso (c.d. ripensamento) previsto dall’art. 52 e seguenti del D.lgs. 206/2005 (Codice del Consumo) dopo l’avvio del processo di passaggio in TIM, non garantisce il ripristino automatico della situazione contrattuale precedente.'),
(7, 2, 'Posso mantenere il mio numero telefonico?', 'Se la nuova abitazione si trova nello stesso distretto telefonico di quella di origine, salvo problemi tecnici, sarà possibile mantenere il vecchio numero telefonico. Fino al momento dell’attivazione della linea nella tua nuova abitazione potrai continuare ad utilizzare la linea telefonica nella tua vecchia abitazione.\n'),
(8, 2, 'Come posso richiederlo?', 'Puoi gestire la tua richiesta di trasloco direttamente da questo sito oppure chiamando il Servizio Clienti 187.\nPer inviare la richiesta via web devi essere registrato all''Area Clienti.\n\nDopo esserti autenticato non dovrai far altro che seguire alcuni semplici passaggi:\n\naccedere all''Area Clienti entrare in "La mia Linea" cliccare su "Trasloca" e compilare online il modulo, al completamento della richiesta di trasloco, riceverai un’e mail di conferma di presa in carico della tua richiesta. Potrai, infine, seguire lo stato della tua richiesta accedendo in Area Clienti > Stato Richieste.'),
(9, 2, 'Cos''è il trasloco di una linea telefonica?', 'Il trasloco ti permette di trasferire la tua linea telefonica presso una nuova abitazione, nella stessa città o in una città diversa.\n'),
(10, 2, 'Quali sono i tempi?', 'Il trasloco viene effettuato di norma entro 10 giorni lavorativi dalla richiesta. Tuttavia, nel caso in cui TIM riscontri la necessità di realizzare lavori aggiuntivi per il completamento del trasloco, essi saranno completamente a tuo carico . Se il trasloco avvenisse in un periodo superiore ai 10 giorni normalmente previsti, il Servizio Clienti ti fornirà tempestiva comunicazione della causa del ritardo, fornendoti indicazioni quanto più precise possibili sulla tempistica prevista.\nSe i tempi di completamento superano i 60 giorni dalla data di acquisizione della tua richiesta, in alternativa, potrai richiede la cessazione della tua vecchia linea e l’attivazione di una nuova linea presso la nuova abitazione, secondo le “ procedure eccezionali” descritte nel paragrafo successivo.'),
(11, 6, 'Subentro familiare', 'La richiesta di subentro familiare (gratuito) può essere effettuata dal titolare della linea, compilando e inviando il modulo online, visualizzabile direttamente su questo sito nella sezione MyTIM Fisso > La mia Linea, oppure telefonando al Servizio Clienti 187.\nIl subentro ti permette di variare l''intestazione del contratto telefonico a favore di un altro membro del tuo nucleo familiare senza interruzione nell''utilizzo della linea telefonica.\nRicorda inoltre che, una volta effettuato il subentro, la domiciliazione bancaria della fattura decade, quindi se hai e vuoi mantenere l''addebito su conto corrente bancario, dovrai fare una nuova richiesta. La variazione è gratuita.\n\nPer richiedere il subentro puoi scegliere di:\n\ncompilare la richiesta online, accedendo alla sezione MyTIM Fisso > La mia Linea e cliccando su “Subentra”. E’ possibile utilizzare questa modalità solo per richiedere il subentro familiare chiamare gratuitamente, in presenza del servizio ADSL di TIM, il Servizio Clienti 187 per effettuare la registrazione del subentro attraverso il Verbal Ordering.\n'),
(12, 6, 'Subentro familiare richiesto da erede a seguito decesso titolare della linea', 'Questa tipologia di subentro permette di variare gratuitamente l''intestazione del contratto telefonico a favore di un erede del titolare della linea deceduto, senza interruzione nell''utilizzo della linea telefonica.\nPer richiederlo puoi scegliere di:\n\nchiamare gratuitamente il Servizio Clienti 187 che effettuerà un Verbal Ordering (registrazione della conversazione in cui viene espressa la volontà di subentrare)\ninviare una richiesta scritta di subentro a Telecom Italia Spa - servizio clienti residenziali - casella postale 211 – 14100 Asti o al numero verde di fax 800000187 indicando tutti i dati relativi all’utenza, allegando:\nautocertificazione di dichiarazione del decesso dell’intestatario;\nuna fotocopia di un documento d’identità di chi inoltra (dell’erede) la richiesta;\nfotocopia del codice fiscale del nuovo titolare (dell''erede);\nun recapito telefonico per eventuali comunicazioni.'),
(13, 6, 'Subentro tra coniugi separati', 'Questa tipologia di subentro permette di variare gratuitamente l''intestazione del contratto telefonico a favore del coniuge assegnatario della residenza a seguito di separazione, senza interruzione, nell''utilizzo della linea telefonica.\n\nPer richiederlo puoi scegliere di:\n\nchiamare gratuitamente il Servizio Clienti 187\ninviare una richiesta scritta di subentro a Telecom Italia Spa - servizio clienti residenziali - casella postale 211 – 14100 Asti o al numero verde di fax 800000187 indicando tutti i dati relativi all’utenza, allegando:\no copia della sentenza di separazione che attribuisce espressamente la linea telefonica al coniuge assegnatario della casa e senza il benestare dell’altro coniuge titolare dell’utenza ubicata presso la casa coniugale;\no il benestare dell’altro coniuge titolare dell’utenza ubicata presso la casa coniugale.\n'),
(14, 6, 'Subentro oneroso', 'Se il subentro non è a favore di un membro della tua famiglia, è a carattere oneroso. Per richiederlo puoi scaricare il modulo da questo sito e inviarlo, compilato in tutte le sue parti, al numero di fax o all''indirizzo postale indicati all''interno del modulo stesso, oppure puoi chiamare il Servizio Clienti 187.\nIn seguito alla tua richiesta, riceverai la copia del contratto da sottoscrivere e da restituire a TIM.'),
(15, 9, 'In cosa consiste il servizio LoSai e ChiamaOra?', 'LoSai di TIM, ti informa sulle chiamate ricevute mentre hai il telefonino spento, non raggiungibile, quando sei occupato in un''altra conversazione e negli altri casi\nin cui non è stato possibile contattarti.Quando torni disponibile riceverai un SMS di notifica, il cui mittente è il numero di chi ti ha cercato e nel testo è indicata la data e l''ora della chiamata ricevuta. Se il numero di chi ti ha cercato è salvato nella tua rubrica, vedrai direttamente il suo nome come mittente e potrai richiamare, o inviare un SMS, direttamente dopo aver letto il messaggio di notifica.\nCon LoSai di TIM ricevi un SMS per ogni chiamata persa, sia quando sei in Italia sia quando ti trovi all’Estero senza costi aggiuntivi rispetto al costo dell’abbonamento.\n \n\nChiamaOra di TIM, ti permette di sapere sempre quand’è il momento giusto per richiamare chi stai cercando.\nQuando la persona che stai chiamando al momento non può rispondere, perché ha il telefonino  spento, fuori copertura o è occupata in un’altra conversazione, il servizio ChiamaOra di TIM ti consente di ricevere un SMS di avviso, oppure di prenotare la richiamata automatica, non \nappena la persona cercata torna contattabile.\nL’utilizzo del ChiamaOra di TIM è semplicissimo!\nQuando chiami un tuo amico ed ascolti la fonia di cortesia del servizio puoi decidere di: chiudere subito la chiamata e ricevere un SMS di avviso quando il tuo amico tornerà contattabile (nel testo dell''SMS sarà indicata l’ora in cui è tornato raggiungibile). Se invece vuoi prenotare la richiamata automatica, attendendo in linea, quando la persona chiamata tornerà raggiungibile il tuo telefonino squillerà e, rispondendo, ChiamaOra di TIM richiamerà per te la persona cercata.\nLa richiamata sarà tariffata in base al tuo piano tariffario. Se invece hai attivato una delle opzioni tariffarie di TIM (voce, SMS, Internet), le richiamate sono tariffate secondo le condizioni previste da tali offerte.'),
(16, 9, 'Quanto costa il servizio LoSai e ChiamaOra?', 'Il servizio è a tempo indeterminato salvo disattivazione che è possibile richiedere in qualsiasi momento chiamando gratuitamente il numero 40920 dedicato ai servizi TIM e seguendo le istruzioni della voce guida, oppure direttamente online.\n\nPer tutti i clienti già TIM ricaricabili il servizio è fruibile a 1,90€ ogni due mesi con addebito  sul credito residuo (*). Per i clienti già TIM con abbonamento il servizio è fruibile a 48 cent al mese solare, con addebito bimestrale di 96 cent sulla fattura della linea mobile. I nuovi clienti \nche passano a TIM mantenendo il numero mobile o attivano una nuova linea, se richiedono contestualmente l’attivazione del servizio LoSai e ChiamaOra di TIM fruiscono del servizio in promozione GRATIS per il primo mese!\n\nI clienti TIM ricaricabili che hanno attivato LoSai e ChiamaOra di TIM entro l’ 1/02/2015 fruiscono del servizio al prezzo di 1,90€ ogni 4 mesi, fino alla scadenza dell’ultimo rinnovo (per conoscere tale data -  personalizzata per cliente - si può chiamare il numero gratuito 40920). Dopo il costo sarà di 1,90€ (IVA inclusa) ogni 2 mesi . Si ricorda, infatti, che dal 6 dicembre 2015 la tariffazione del servizio LoSai e ChiamaOra di TIM, anche per tali Clienti, avviene ogni 2 mesi anziché 4, al costo attuale di 1,90€ (*). \n\nI clienti TIM con abbonamento che hanno attivato LoSai e ChiamaOra di TIM entro l’ 1/02/2015 contestualmente all’attivazione di una nuova linea o al passaggio a TIM mantenendo il numero mobile, hanno il servizio Gratis per i primi 4 mesi e poi al costo di 48 cent al mese solare, con addebito bimestrale di 96 cent sul rendiconto \ntelefonico TIM.\n\n\n(*)Ti ricordiamo che se al momento del rinnovo il credito disponibile sulla tua TIM Card è inferiore al costo previsto, il credito residuo non verrà eroso. L’importo relativo al rinnovo del servizio verrà scalato alla prima ricarica utile\n'),
(17, 10, 'Come posso effettuare online un trasloco?', 'Il trasloco ti permette di trasferire la tua linea telefonica presso una nuova abitazione, nella stessa città o in una città diversa. Qualora la nuova abitazione si trovi nello stesso distretto telefonico di quella di origine, salvo problemi tecnici, sarà possibile mantenere il vecchio numero telefonico.\nLa richiesta di trasloco può essere inviata direttamente online oppure chiamando il Servizio Clienti 187.\n'),
(18, 10, 'Come posso vedere lo stato delle mie richieste?', 'Registrandoti  in MyTIM Fisso  puoi verificare l’avanzamento delle tue richieste commerciali, amministrative e tecniche.'),
(19, 11, 'Perché dovrei registrarmi a MyTIM Fisso?', 'Innanzi tutto perché è semplice e veloce, poi, perchè hai la possibilità di gestire autonomamente la tua linea! Compila il form di registrazione  per accedere ai nostri servizi. La registrazione è competa e certificata se utilizzi un collegamento TIM associato al codice fiscale da registrare:\n\nse sei già un cliente internet TIM potrai accedere utilizzando username e password di Alice Mail.\nse effettui la registrazione fuori casa o da una linea non TIM, dovrai chiamare il numero gratuito 40 123 opzione 2.\n'),
(20, 11, 'Se la perdo o non la ricordo come posso recuperare la password della sezione MyTIM Fisso ?', 'Clicca su Non ricordi più Username o Password? Recuperali! all’interno di MyTIM Fisso.\n\nTi verrà chiesto di inserire il tuo username o il tuo codice fiscale, di inserire i 5 caratteri che visualizzi e di cliccare su "PROSEGUI". A questo punto ti verrà proposta la domanda segreta, a cui dovrai rispondere con la "risposta di controllo" inserita in fase di registrazione. Ti verrà così inviata una nuova password nella casella email indicata in fase di registrazione. “Se non ricordi la risposta alla domanda segreta”. Il sistema ti presenterà una maschera in cui devi inserire il numero fattura (es. RW03910103), il numero di telefono ed il numero del bimestre di riferimento (es. 5/2013). A questo punto visualizzerai la tua username e riceverai la  nuova password nella casella email indicata in fase di registrazione.  In alternativa, utilizza il servizio Chat, un operatore potrà darti assistenza.\n'),
(21, 14, 'Come leggo la fattura della linea fissa?', 'Nella prima pagina trovi:\n\ni dati principali dell’intestatario della linea di casa e della fattura\nil riepilogo degli abbonamenti attivi \nun box informativo con le proposte commerciali personalizzate relative a offerte, prodotti, servizi \nl’informazione sulla modalità di pagamento (bollettino, addebito su conto corrente o su carta di credito)\nlo stato dei pagamenti\nuna guida veloce che riporta, attraverso semplici icone, i riferimenti per entrare in contatto con TIM: \nApp MyTIM Fisso per Smartphone e Tablet, sito www.tim.it (registrandoti alla sezione MyTIM Fisso), Social Network (Facebook, Youtube, Twitter, Google+), Servizio clienti 187, Negozi TIM.\n\nNella pagina del “Dettaglio dei costi” le voci sono riordinate secondo una logica più vicina alle tue esigenze: \n\nprima trovi gli eventuali “Importi Una Tantum” cioè quelli straordinari da pagare una sola volta, poi gli “Abbonamenti” (canoni delle offerte/prodotti/servizi attivi), segue la descrizione “Telefonate e contenuti” (consumi di traffico, sms, contenuti digitali come video on demand, ebook, ecc)  ed infine la voce “Altri importi” (spese di produzione e spedizione fatture, le rate dei prodotti, le indennità di ritardato pagamento, interessi legali e moratori, consegna elenchi telefonici).\n'),
(22, 14, 'Che vantaggi ho con la fattura online?', 'Con la fattura online puoi:\n\navere chiarimenti sul significato delle voci in fattura\nvisualizzare il dettaglio di tutte le tue telefonate ed analizzarle utilizzando i filtri per tipo di chiamata, offerta, data, numero chiamato, fascia oraria, durata e costo;\ninviare segnalazioni al Servizio Clienti (ad es. segnalazione di errato addebito del traffico, richiesta di abilitazione di un servizio, ecc.) ottenendo la risposta in tempi brevi.\ninviare la fattura sulla tua casella emai\nvisualizzare e scaricare in formato excel i grafici del tuo traffico'),
(23, 14, 'Vorrei cambiare l’indirizzo e-mail su cui ricevere il messaggio della disponibilità online della mia fattura. Come posso fare?', 'Accedi con la tua username e password nella sezione “MyTIM Fisso”   "Il mio profilo “Gestione Profilo" e quindi clicca su “Gestione email” che si trova sulla stessa riga della voce "Email": qui potrai modificare l’indirizzo e-mail su cui ricevere il messaggio della disponibilità online della tua fattura, inserendone uno nuovo o selezionando come principale uno di quelli già presenti\n'),
(24, 18, 'Guida alla registrazione a MyTIM Mobile', 'Clicca sul tasto Registrati e procedi inserendo  il numero dell’utenza che vuoi registrare ed il codice di sicurezza visualizzabile nell’immagine. Riceverai un sms (*) con un codice temporaneo che dovrai inserire nell’apposito campo.\nLa tua username sarà il numero di telefonino. Ti sarà richiesto di scegliere una password di 8 cifre numeriche e di inserire il tuo indirizzo di posta elettronica. Riceverai quindi una mail da parte di TIM che ha come oggetto: Notifica da www.tim.it - verifica indirizzo email (se non la trovi  nella casella “Posta ricevuta” verifica se non sia all’interno della casella spam/posta indesiderata). Clicca sul link presente all’interno della mail per confermare l’indirizzo di posta elettronica fornito e completare così il processo di registrazione a MyTIM Mobile.\nCon le stesse username e password potrai accedere a MyTIM Mobile anche da smartphone e dall’APP MyTIM Mobile (in wifi).\n\n(*) assicurati che il tuo telefonino/tablet sia abilitato alla ricezione degli sms, altrimenti inserisci, temporaneamente, la sim in un telefonino abilitato\n'),
(25, 18, 'Come posso modificare la mia password di accesso?', 'Se desideri modificare la tua password entra direttamente in MyTIM Mobile. All’interno della sezione “I tuoi dati” potrai procedere alla Modifica Password.'),
(26, 19, 'Come posso verificare il mio traffico telefonico?', 'In MyTIM Mobile puoi verificare il dettaglio delle tue chiamate ed i relativi consumi. Se hai una linea prepagata puoi verificare il dettaglio del traffico a partire dal giorno precedente e fino agli ultimi 2 mesi rispetto alla data di consultazione mentre se hai un abbonamento, oltre a verificare il saldo dei consumi in corso di fatturazione, è possibile verificare online e scaricare il pdf del traffico telefonico effettuato entro 90 gg. dalla data di scadenza della fattura di riferimento . Per visualizzare l’elenco delle tue chiamate clicca qui.'),
(27, 24, 'Come fare se non si caricano i brani?', 'Verifica che ci sia connessione: se non c’è connessione (rete mobile TIM o Wi-Fi) o la connessione è troppo lenta (EDGE e GPRS) il caricamento dei brani o delle immagini non è possibile o non è abbastanza veloce.'),
(28, 24, 'Come disattivo un abbonamento?', 'Se hai attivato l’abbonamento TIMmusic presso un Negozio o tramite il 40916/40915 (voce guidata) o sms o su tim.it puoi disattivarlo utilizzando uno delle modalità indicate su tim.it nella sezione “Come si Attiva” della specifica offerta.\n\nEsempi:\n\nTIMmusic promo 50%: puoi chiamare il 40916 e seguire la voce guida, oppure accedere a tim.it (area clienti) e disattivare l’offerta, oppure chiamare il 119.\n\nTIMyoung&music:  TIMmusic è incluso (senza costi aggiuntivi) nella offerta, quindi puoi cessarlo cessando l’offerta nelle modalità indicate su tim.it nella sezione “Come si Attiva” della TIMyoung&music.\n\n \n\nSe l’abbonamento è stato attivato da app puoi contattare il 119.'),
(29, 26, 'Come vedo il mio abbonamento?', 'Per visualizzare il proprio abbonamento, puoi:\r\n\r\nentrare su www.timgames.it e cliccare su MyTIMgames.  All’interno della sezione “gestione abbonamenti” troverai tutti i dettagli del servizio da te sottoscritto;\r\nentrare nell’Area clienti del sito tim.it e cliccare poi nella sezione “opzioni”\r\noppure chiamare il 40916 e consultare le opzioni attive sul proprio profilo.'),
(30, 26, 'Come disattivo il mio abbonamento?', 'Per disattivare il tuo abbonamento, puoi farlo:\n\nall’interno dell’area clienti MyTIMgames, sul sito mobile www.timgames.it\ndirettamente online all’interno dell’Area clienti sul sito tim.it\nchiamando il numero gratuito 40916 (per Clienti Ricaricabili) e seguendo la voce guida\ninviando un SMS gratuito al numero 40916 con il testo ILOVEGAMESPROMO OFF\nchiamando gratuitamente il Servizio Assistenza Clienti 119'),
(31, 25, 'Come ottengo un Adobe ID?', 'Per leggere i nostri eBook e Magazine devi disporre di un Adobe ID, ossia di una username e una password, con il quale Adobe® possa riconoscerti e assicurarsi che nessun altro oltre te possa leggere i contenuti che hai acquistato.\r\n\r\nSei non hai ancora un Adobe ID, puoi registrarti sul sito www.adobe.it.\r\n\r\nPer semplicità, ti consigliamo di utilizzare le stesse credenziali che hai scelto per registrarti su TIMreading.'),
(32, 25, 'Come disattivo il mio abbonamento?', 'Se hai acquistato il tuo abbonamento ad un Magazine o ad Quotidiano potrai disattivarlo:\n\ndirettamente online sul sito TIMreading, nel tuo profilo, solo se lo hai acquistato sul sito TIMreading\nchiamando il 119 o accedendo al My TIM mobile del sito TIM se lo hai acquistato con addebito su credito mobile o bolletta TIM oppure nei Negozi TIM/sito TIM\nchiamando il 187 se lo hai acquistato con addebito in bolletta Telecom Italia o l’800.187.800 (selezionare il tasto 2) se hai pagato con carta di credito.\nSe hai deciso di disattivare un abbonamento ad un magazine verrai rimborsato sullo strumento di pagamento utilizzato per l acquisto, di un importo variabile in funzione del periodo di abbonamento già fruito.'),
(33, 27, 'Come recupero le mie credenziali di accesso?', 'Se hai dimenticato o smarrito la password di accesso TIMvision puoi recuperarla direttamente dal sito timvision.it o dall’ app TIMvision sul tuo tablet/Smartphone. Entra in ACCEDI e segui il percorso per recuperare i dati della password che ti verranno inviati alla casella mail che indicherai. Ti invitiamo sempre a controllare nella posta indesiderata, perché potrebbe accadere che tale mail venga considerata spam.\n\nSe invece non ricordi sia username che password @alice collegati alla linea fissa TIM, e che hai utilizzato per registrati a TIMvision. Entra nel sito http://mail.alice.it e seleziona il link Recupera username e password. Inserisci la domanda/risposta che hai impostato in precedenza per il recupero dei dati. Se non hai impostato o non ricordi la domanda/risposta inserite è necessario contattare il Servizio Clienti al 187.'),
(34, 7, 'Ho subito il furto del mio telefono. Cosa devo fare?', 'In caso di furto o smarrimento del tuo telefonino dovrai tempestivamente bloccare la linea relativa alla SIM presente al suo interno. Se sei un cliente ricaricabile e sei già registrato alla sezione MyTIM Mobile puoi bloccare la linea direttamente online. Se non sei registrato alla sezione MyTIM Mobile o se sei un cliente in abbonamento dovrai contattare il Servizio Clienti 119. Previa identificazione e verifica della titolarità del numero (attraverso la comunicazione di nome, cognome, codice fiscale,...) verrà immediatamente bloccata la linea al traffico telefonico.\n\nSe desideri bloccare anche il telefonino rubato o smarrito cosicché non sia più possibile utilizzarlo sulla rete degli operatori mobili nazionali potrai inviarci un''autodichiarazione di furto o smarrimento attraverso l''apposito modulo di richiesta "Blocco IMEI" indicando il codice IMEI del telefonino da bloccare e allegando copia del documento di riconoscimento. Puoi compilare ed inviarci il modulo direttamente online oppure scaricarlo in formato PDF e spedirlo all''indirizzo indicato nel modulo stesso.\n\nVai nella sezione MODULI.\n\nTi ricordiamo che l''IMEI è un codice composto di 15 cifre ed è riportato su di una etichetta all''interno del telefonino o sulla confezione originale dello stesso; si può inoltre individuare digitando sulla tastiera del telefonino il seguente codice: *#06#. Nel caso non abbia conservato la confezione del telefonino o non abbia provveduto in passato a memorizzare il codice IMEI, è possibile risalire allo stesso comunicando a TIM, attraverso il Modulo di richiesta Blocco IMEI, quattro numeri di telefono che chiami abitualmente. Nel caso in cui sporgessi denuncia presso le competenti Autorità di Pubblica Sicurezza puoi allegarne copia alla suddetta richiesta. Il servizio di blocco IMEI è gratuito.'),
(35, 7, '', ''),
(36, 15, 'Posso richiedere la domiciliazione sulla carta di credito?', 'Questo servizio ti permette di domiciliare in maniera permanente la fattura sulla tua carta di credito American Express, BankAmericard, Key Client, CartaSi, Diners Club e Moneta. Oltre ad essere comodo e sicuro, il servizio è gratuito e ti permette anche di usufruire della dilazione del pagamento in base ai giorni di valuta previsti dall''estratto conto della tua carta di credito. Inoltre, richiedendo Pagocard ti viene rimborsato l''anticipo conversazioni interurbane versato.\n\nPer aderire a Pagocard è necessario scaricare il modulo, stamparlo e seguire queste semplici istruzioni:\n\nCompila tutti i campi del modulo di adesione. Ricorda di inserire il tuo codice CIN che puoi reperire, se non sei domiciliato, all''interno del "bollettino di pagamento premarcato" o se sei già domiciliato, all''interno della fattura nella pagina in cui sono riportati i riferimenti IVA.\nFirma il modulo di adesione negli appositi campi.\nAllega al modulo di adesione una copia del bollettino di pagamento premarcato (se non domiciliato) o la copia della pagina della fattura dove sono riportati i codici Telecom Italia (se sei già domiciliato).\nInvia il tutto per posta in busta chiusa o via fax (dove indicato) alla società emittente la tua carta di credito.\nConsulta l’elenco delle Società Emittenti convenzionate.\nVerifica di aver compilato il modulo in tutte le sue parti poiché in caso contrario non sarà ritenuto valido.\nLa conferma dell''avvenuta domiciliazione avverrà direttamente sulla tua fattura.\n\n'),
(37, 15, 'Posso utilizzare il P@gonline in My TIM Fisso per pagare la fattura di un amico o un parente?', 'Non è necessario che la fattura sia intestata a te, inserirai in questo caso le informazioni relative alla fattura che vuoi pagare\r\n'),
(38, 15, 'Posso pagare parzialmente una fattura scoperta?\r\n', 'Il pagamento parziale di una fattura è possibile solo se effettuato presso Poste Italiane o i Punti vendita LIS PAGA di Lottomatica.\r\n'),
(39, 15, 'Sono in ritardo con il pagamento, devo sempre comunicare gli estremi al servizio automatico?\r\n', 'Il servizio automatico di comunicazione degli estremi è gratuito e può essere sempre utilizzato, ma attualmente i tempi di trasmissione dei pagamenti sono molto ridotti, in particolar modo per i pagamenti effettuati tramite la rete Puntolis®, Sisal, che forniscono i dati dei pagamenti nella stessa giornata.\r\nTi ricordo, invece, che utilizzando il servizio P@gonline non è necessario procedere con la segnalazione in quanto avviene già in automatico al momento del pagamento.\r\n\r\n\r\n'),
(40, 23, 'A cosa serve il servizio Assisted GPS?', 'A-GPS, o Assisted GPS (GPS Assistito), è un sistema che consente di abbattere i tempi necessari alla prima localizzazione durante l''uso di un terminale GPS, ed è normalmente associato ai sistemi di localizzazione basati su telefonia cellulare. \r\nLo scopo principale di questo sistema è quello di "assistere" il ricevitore GPS nel calcolo della posizione, fornendogli informazioni sui satelliti in vista. Tale metodologia richiede il supporto dell''operatore di telefonia mobile, in quanto per recuperare l’elenco dei satelliti in vista viene interrogato un Assistance Server raggiungibile solo attraverso Internet. '),
(41, 21, 'Come richiedo il servizio SOSsmartphone?', 'Puoi contattare il numero 0458214811 (chiamata a pagamento in base al proprio piano tariffario/offerta);\r\nscaricare l’App SOS Smartphone da APP Store (per iOS) e Google Play (per Android) e richiedere l’intervento.\r\nIl servizio SOSsmartphone prevede un costo ad intervento a partire da 3€ (IVA inclusa). L’importo sarà addebitato in fattura se sei un cliente con Abbonamento mentre sarà scalato dal credito residuo se sei un cliente Ricaricabile.\r\nDal 12 maggio inoltre il servizio SOSsmartphone è disponibile anche in abbonamento a 2€/mese. In questo modo avrai l’assistenza di cui hai bisogno sempre disponibile e completa per un anno.'),
(42, 21, 'Dove trovo approfondimenti sul SOSsmartphone?\r\n', 'Ti ricordiamo che nell’area Assistenza del sito TIM.it sono a tua disposizione tutte le guide per le configurazioni di smartphone, tablet e chiavette che ti consentiranno, in completata autonomia, di configurare il tuo telefonino a tutti i servizi TIM. Per accedere Clicca qui e seleziona la marca ed il modello di tuo interesse.'),
(43, 20, 'Come posso far valutare il mio telefono?', 'Far valutare il telefono è molto semplice. E’ sufficiente:\r\n\r\n• portare presso uno dei negozi TIM che aderiscono all’iniziativa il tuo vecchio telefono, smartphone o tablet\r\n• l’addetto del negozio procederà alla valutazione del prodotto, verificandone le condizioni e lo stato d’uso\r\n• se accetti la valutazione, riceverai uno sconto di pari valore che potrai utilizzare subito per l’acquisto di un nuovo smartphone, tablet, oppure Ricariche telefoniche TIM.'),
(44, 4, 'Posso rivolgermi anche a un Negozio TIM diverso da quelli elencati?', 'Nessun Negozio TIM al di fuori di quelli indicati in questa lista è abilitato alla riconsegna dei prodotti di cui si è chiesto il recesso del contratto di noleggio, pertanto, in nessun caso, potrà procedere al ritiro.'),
(45, 8, 'A chi mi devo rivolgere per effettuare il passaggio?', 'Puoi effettuare il passaggio scrivendoci o in alternativa presso un qualsiasi Negozio TIM.'),
(46, 12, 'Come posso verificare se un numero è TIM?', 'Devi comporre il numero 456 seguito dal numero di telefono per il quale si desidera l''informazione (esempio 4563XXabcdefg): una fonia ti dirà se il numero corrisponde ad un cliente TIM o ad un altro operatore\r\nInviare un SMS (gratuito) al 456 con la seguente sintassi: INFO 3XXabcdefg\r\nverificare online sul sito tim.it, clicca su “Verifica Numero TIM”.');

-- --------------------------------------------------------

--
-- Table structure for table `immagini_prodotto`
--

CREATE TABLE IF NOT EXISTS `immagini_prodotto` (
  `id` int(11) NOT NULL,
  `id_prodotto` int(11) NOT NULL,
  `url` varchar(100) NOT NULL,
  `is_principale` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `immagini_prodotto`
--

INSERT INTO `immagini_prodotto` (`id`, `id_prodotto`, `url`, `is_principale`) VALUES
(1, 1, 'images/prodotti/smartphone/1-01.jpg', 1),
(2, 1, 'images/prodotti/smartphone/1-02.jpg', 0),
(3, 1, 'images/prodotti/smartphone/1-03.jpg', 0),
(4, 1, 'images/prodotti/smartphone/1-04.jpg', 0),
(5, 2, 'images/prodotti/smartphone/2-01.jpg', 0),
(6, 2, 'images/prodotti/smartphone/2-02.jpg', 1),
(7, 2, 'images/prodotti/smartphone/2-03.jpg', 0),
(8, 3, 'images/prodotti/smartphone/3-01.jpg', 1),
(9, 3, 'images/prodotti/smartphone/3-02.jpg', 0),
(10, 3, 'images/prodotti/smartphone/3-03.jpg', 0),
(11, 3, 'images/prodotti/smartphone/3-04.jpg', 0),
(12, 4, 'images/prodotti/smartphone/4-01.jpg', 1),
(13, 4, 'images/prodotti/smartphone/4-02.jpg', 0),
(14, 4, 'images/prodotti/smartphone/4-03.jpg', 0),
(15, 5, 'images/prodotti/smartphone/5-01.png', 1),
(16, 5, 'images/prodotti/smartphone/5-02.jpg', 0),
(17, 5, 'images/prodotti/smartphone/5-03.jpg', 0),
(18, 6, 'images/prodotti/smartphone/6-1.jpg', 1),
(19, 6, 'images/prodotti/smartphone/6-2.jpg', 0),
(20, 6, 'images/prodotti/smartphone/6-3.jpg', 0),
(21, 6, 'images/prodotti/smartphone/6-4.jpg', 0),
(22, 7, 'images/prodotti/smartphone/7-1.jpg', 1),
(23, 7, 'images/prodotti/smartphone/7-2.jpg', 0),
(24, 7, 'images/prodotti/smartphone/7-3.jpg', 0),
(25, 8, 'images/prodotti/smartphone/8-1.jpg', 1),
(26, 8, 'images/prodotti/smartphone/8-2.jpg', 0),
(27, 8, 'images/prodotti/smartphone/8-3.jpg', 0),
(28, 9, 'images/prodotti/smartphone/9-1.jpg', 1),
(29, 9, 'images/prodotti/smartphone/9-2.jpg', 0),
(30, 9, 'images/prodotti/smartphone/9-3.jpg', 0),
(31, 9, 'images/prodotti/smartphone/9-4.jpg', 0),
(32, 10, 'images/prodotti/smartphone/10-1.jpg', 1),
(33, 10, 'images/prodotti/smartphone/10-2.jpg', 0),
(34, 10, 'images/prodotti/smartphone/10-3.jpg', 0),
(35, 11, 'images/prodotti/tablet/11.jpg', 0),
(36, 12, 'images/prodotti/tablet/12.jpg', 0),
(37, 13, 'images/prodotti/tablet/13.jpg', 0),
(38, 14, 'images/prodotti/tablet/14.jpg', 0),
(39, 15, 'images/prodotti/tablet/15.jpg', 0),
(40, 16, 'images/prodotti/tablet/16.jpg', 0),
(41, 17, 'images/prodotti/tablet/17.png', 0),
(42, 18, 'images/prodotti/tablet/18.jpg', 0),
(43, 19, 'images/prodotti/tablet/19.jpg', 0),
(44, 20, 'images/prodotti/tablet/20.png', 0),
(45, 21, 'images/prodotti/modem/21.jpg', 0),
(46, 22, 'images/prodotti/modem/22.jpg', 0),
(47, 23, 'images/prodotti/modem/23.jpg', 0),
(48, 24, 'images/prodotti/modem/24.jpg', 0),
(49, 25, 'images/prodotti/modem/25.jpg', 0),
(50, 26, 'images/prodotti/modem/26.png', 0),
(51, 27, 'images/prodotti/modem/27.jpg', 0),
(52, 28, 'images/prodotti/modem/28.jpg', 0),
(53, 29, 'images/prodotti/modem/29.jpg', 0),
(54, 30, 'images/prodotti/modem/30.jpg', 0),
(55, 31, 'images/prodotti/modem/31.jpg', 0),
(56, 32, 'images/prodotti/tv/32.jpg', 0),
(57, 33, 'images/prodotti/tv/33.jpg', 0),
(58, 34, 'images/prodotti/tv/34.jpg', 0),
(59, 35, 'images/prodotti/tv/35.png', 0),
(60, 36, 'images/prodotti/tv/36.jpg', 0),
(61, 37, 'images/prodotti/tv/37.jpg', 0),
(62, 38, 'images/prodotti/tv/38.jpg', 0),
(63, 39, 'images/prodotti/tv/39.jpg', 0),
(64, 40, 'images/prodotti/tv/40.jpg', 0),
(79, 41, 'images/prodotti/outlet/41.jpg', 1),
(80, 42, 'images/prodotti/outlet/42.jpg', 1),
(81, 43, 'images/prodotti/outlet/43.jpg', 1),
(82, 44, 'images/prodotti/outlet/44.jpg', 1),
(83, 45, 'images/prodotti/outlet/45.jpg', 1),
(84, 46, 'images/prodotti/outlet/46.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `prodotti`
--

CREATE TABLE IF NOT EXISTS `prodotti` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `categoria` varchar(11) NOT NULL,
  `rata` decimal(10,2) NOT NULL,
  `prezzo` decimal(10,2) NOT NULL,
  `produttore` varchar(100) NOT NULL,
  `in_promozione` tinyint(1) NOT NULL,
  `url_immagine` varchar(100) NOT NULL,
  `descrizione` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `prodotti`
--

INSERT INTO `prodotti` (`id`, `nome`, `categoria`, `rata`, `prezzo`, `produttore`, `in_promozione`, `url_immagine`, `descrizione`) VALUES
(1, 'Sony XPERIA X', 'smartphone', 0.00, 629.90, 'Sony', 0, 'images/prodotti/smartphone/1.jpg', 'Il capolavoro\n\nUno smartphone dalle prestazioni inimitabili che integra una sensazionale fotocamera in grado di predire il prossimo movimento del soggetto.\n\nUna fotocamera senza rivali\n\nXperia X Performance integra la nuova fotocamera firmata Sony, più veloce e smart che mai. Tempi di risposta più rapidi, messa a fuoco più intelligente e rivoluzionaria velocità di otturazione adattiva: avrai tutto il necessario per scatti incredibilmente nitidi, in qualsiasi condizione. La messa a fuoco automatica ibrida intuitiva di Xperia X Performance utilizza le tecnologie delle fotocamere Sony e ti permette di cogliere qualsiasi movimento. Basta scegliere il soggetto da mettere a fuoco e la fotocamera lo seguirà automaticamente, anche quando si muove. La messa a fuoco è sempre chiara e il soggetto sempre nitido: non dovrai più preoccuparti di seguire la scena. Pensa a tutto il tuo smartphone.\n\nLa fotocamera da 23 MP che non teme i movimenti improvvisi\n\nLa nostra rapidissima fotocamera è in grado di passare dallo standby allo scatto in meno di 0,6 secondi. Grazie all''incredibile rapidità di avvio, messa a fuoco automatica ibrida ed elaborazione dell''immagine, potrai cogliere i momenti più inattesi.\n\nUn tocco di classe\n\nBasta prendere Xperia X Performance in mano per accorgersi di quanto sia speciale: lasciati conquistare dal display curvo e dalla parte posteriore monoblocco in metallo. Scegli fra Nero grafite o Bianco per un esclusivo effetto satinato. Oppure le versioni Oro lime e Oro rosa per un tocco di eleganza. Xperia X Performance riflette i tuoi gusti e il tuo stile di vita. L''ultima versione del classico modello Sony è caratterizzata da un design straordinariamente semplice, ancora più comodo grazie ai bordi ricurvi e al display da 5". E l''interfaccia utente non è da meno, con un look sempre più personalizzato e un approccio più intuitivo.\n\nInarrestabile potenza\n\nXperia X Performance è dotato di un rapidissimo processore Snapdragon 820 e di velocità di connessione Cat91 per prestazioni senza rivali. Preparati a restare a bocca aperta.\n\nStreaming alla velocità della luce\n\nConnettività ultra rapida per un intrattenimento ininterrotto. Vuoi guardare un film in streaming su Netflix o scaricare il tuo podcast preferito? Dì addio ai tempi di attesa. Grazie all''ultimo processore Snapdragon 820 e a una connettività senza rivali, Xperia X Performance ti permette di accedere ai contenuti multimediali desiderati in un batter d''occhio e con estrema facilità, senza buffering o ritardi.'),
(2, 'LG K8', 'smartphone', 0.00, 179.90, 'LG', 0, 'images/prodotti/smartphone/2.jpg', 'SCEGLI IL TUO STILE\n\nLa nuova serie K di LG ti offre una gamma di smartphone che rispecchiano la tua personalità. LG K8 ti accompagna nei tuoi viaggi e ti sorprenderà con selfie dettagliati tutti da condividere con la velocità della rete 4G LTE.\n\nDESIGN CON VETRO SMUSSATO\n\nDatti un tono! LG K8 ha un design che lascia a bocca aperta grazie al profilo del vetro smussato e alla forma arrotondata. In più è più ergonomico e garantisce una presa più salda grazie alla lavorazione della cover posteriore.\n\nFOTOCAMERA E FLASH VIRTUALE\n\nCattura i le situazioni più divertenti della giornata con la fotocamera da 8 Megapixel. E'' sufficiente un tocco sul display e K8 mette a fuoco e scatta immediatamente. Anche per i selfie puoi contare sulla fotocamera frontale da 5 Megapixel con la funzione flash virtuale che illumina il tuo volto, così i tuoi selfie saranno illuminati come si deve, mentre tutti gli altri... scatteranno selfie scuri!\n\nDISPLAY DA 5"\n\nGuarda le tue foto e i tuoi video sul display ampio da ben 5".'),
(3, 'Huawei P9', 'smartphone', 0.00, 599.90, 'Huawei', 0, 'images/prodotti/smartphone/3.jpg', 'PREMIUM. ELEGANT. STYLISH.\nHuawei P9 presenta un design con linee dal forte impatto visivo, caratterizzate da spigoli tagliati a diamante e arrotondati a regola d’arte. Lo smartphone ha una struttura unibody in alluminio aerospaziale e vetro 2.5D di categoria superiore, ed è disponibile in due varianti cromatiche: Titanium Grey e Mystic Silver.\n\n\nDISPLAY LUMINOSO E DAI COLORI INTENSI\n\nCon una resa cromatica del 96%, il sensazionale display IPS Full HD da 5,2" porta alla scoperta di un mondo ricco di colori intensi e ancora più naturali.\n\nUN INNOVATIVO SISTEMA CON DOPPIA FOTOCAMERA, UNA COLLABORAZIONE UNICA\n\nLa collaborazione tra Huawei e Leica ha dato vita a uno smartphone con doppia fotocamera. Il risultato: maggiore luminosità e nitidezza per foto e video sensazionali.\n\nINNOVATIVO SISTEMA CON DOPPIA FOTOCAMERA\n\nHuawei P9 è in grado di catturare immagini dai colori luminosi e garantire al contempo una resa in bianco e nero straordinaria; il tutto con lo stile senza tempo di Leica.La tecnologia con doppia fotocamera di Huawei P9 consente di catturare una maggiore quantità di luce, combinando al meglio la qualità del colore acquisito dal sensore RGB con i dettagli ottenuti dal sensore in bianco e nero. Il tutto per garantire il massimo risultato ad ogni scatto.\n\n'),
(4, 'Huawei P9 Plus', 'smartphone', 0.00, 749.90, 'Huawei', 0, 'images/prodotti/smartphone/4.jpg', 'DESIGN ELEGANTE, CURA NEI DETTAGLI\n\nL’esperienza di Huawei P9 si eleva ad un livello superiore con Huawei P9 Plus grazie al luminoso display da 5.5” e l’elegante corpo in metallo\n\nREINVENT SMARTPHONE PHOTOGRAPHY\n\nGrazie al perfetto connubio tra hardware e software di classe superiore della doppia fotocamera Leica, P9 Plus consente di catturare immagini di assoluta qualità senza rinunciare al design compatto ed elegante.\n\nUN INNOVATIVO SISTEMA A DOPPIA FOTOCAMERA\n\nP9 Plus è in grado di catturare immagini dai colori luminosi e garantire al contempo una resa in bianco e nero straordinaria; il tutto con lo stile senza tempo di Leica.La tecnologia con doppia fotocamera di P9 Plus consente di catturare una maggiore quantità di luce, combinando al meglio la qualità del colore acquisito dal sensore RGB con i dettagli ottenuti dal sensore in bianco e nero. Il tutto per garantire il massimo risultato ad ogni scatto.La doppia fotocamera da 12MP con pixel da 1,25µm ottimizza gli scatti in condizioni di scarsa illuminazione, mentre la tecnologia IMAGEsmart 5.0 di P9 Plus garantisce la massima qualità di immagine in ogni circostanza.L’algoritmo sviluppato in collaborazione con Leica assicura una qualità di immagine propria di una macchina fotografica, anche in condizioni di scarsa illuminazione.\n\nUN DISPLAY FULL HD DA 5,5", PIÙ AMPIO E PIÙ LUMINOSO\n\nGrazie alla tecnologia AMOLED, l’ampio display Full HD da 5,5" offre una maggiore saturazione del colore e un contrasto più elevato, per un’esperienza visiva sempre più intensa.\n\nMAGGIORE AUTONOMIA E RICARICA RAPIDA\n\nLa batteria da 3400mAh con di ricarica rapida garantisce un’autonomia più elevata.\n\nAVANZATA TECNOLOGIA ‘PRESS TOUCH’\n\nP9 Plus è dotato dell’innovativa tecnologia ‘Press Touch’, basata sul riconoscimento della pressione effettuata sul display.La nuova e ottimizzata tecnologia ‘Press Touch’ rileva le più impercettibili variazioni di pressione sullo schermo garantendo la massima interattività e reattività dello smartphone.Visualizza le anteprime delle immagini, ingrandiscine i dettagli, ed accedi rapidamente alle applicazioni con il menu di scelta rapida a comparsa.\n\n'),
(5, 'Samsung Galaxy J5', 'smartphone', 0.00, 229.90, 'Samsung', 0, 'images/prodotti/smartphone/5.png', 'Sistema Operativo Android 5.1\nDisplay 5.2” 16 Milioni colori Touch\nProcessore QuadCore 1.2 Ghz'),
(6, 'iPhone 6s', 'smartphone', 0.00, 789.90, 'Apple', 1, 'images/prodotti/smartphone/6.jpg', '4GPLUS\nDisplay Retina HD da 4,7"(diagonale) con risoluzione di 1334x750 px\n3D Touch\nChip A9 con coprocessore di movimento M9 integrato\nFotocamera iSight da 12 megapixel con Focus Pixels, True Tone Flash e Live Photos\niOS 9 e iCloud'),
(7, 'iPhone SE 16 GB', 'smartphone', 0.00, 509.90, 'Apple', 0, 'images/prodotti/smartphone/7.jpg', 'Il telefono da 4" più potente di sempre. iPhone SE riprende un design compatto di grande successo aggiungendovi due fotocamere evolute e una potenza di elaborazione incredibile.Disegnato per stare comodamente in mano e risultare piacevole al tatto, grazie alla finitura satinata del guscio in alluminio microsabbiato.\n\niPhone SE ha un display Retina da 4’’, chip A9 con archittetura a 64 bit di livello desktop, sensore di impronte digitali Touch ID, fotocamera iSight da 12MP, videocamera FaceTime HD con Retina flash, Live Photos e connessioni Wi-Fi e 4G veloci. E ancora, iOS 9 e iCloud.'),
(8, 'ZTE Blade L5', 'smartphone', 0.00, 79.90, 'ZTE', 0, 'images/prodotti/smartphone/8.jpg', 'Sistema Operativo Android 5.1\nDisplay 5”\nProcessore DualCore 1.3 GHz\nFotocamera 8 Mpixel/Flash'),
(9, 'Microsoft Lumia 950', 'smartphone', 0.00, 499.90, 'Microsoft', 1, 'images/prodotti/smartphone/9.jpg', 'Funzionalità di livello superiore, design eccellente e la migliore esperienza con Windows 10: scegli Lumia 950 e trasforma un momento qualsiasi in una grande conquista.\n\nScopri tutto quello che puoi fare con il tuo Microsoft Lumia. '),
(10, 'Samsung Galaxy S6 32 GB', 'smartphone', 0.00, 639.90, 'Samsung', 1, 'images/prodotti/smartphone/10.jpg', 'Armonia perfetta tra forma e sostanza.\n\nTraendo ispirazione dagli artisti della forma, come i mastri vetrai ed i fabbri di bottega, Samsung Galaxy S6 è il perfetto incontro di materiali finemente forgiati tra loro. Una rivelazione senza precedenti fatta non solo di straordinaria forma e dalle superfici lucenti, ma anche di eccellente sostanza con un ampio spettro di colori ancora più vibranti.\n \nTecnologia avanzata, immagini più definite.\n\nOvunque tu sia potrai catturare al meglio ogni momento, ed ogni suo dettaglio, grazie alla fotocamera anteriore e posteriore di Samsung Galaxy S6, con risoluzione maggiore ed un obiettivo F1.9. Basterà un semplice doppio click per attivare la fotocamera e fissare i tuoi istanti, per sempre.\n \nRicaricarsi non è mai stato così facile.\n\nUna ricarica veloce quasi il doppio rispetto al passato non è più un sogno. Inoltre, puoi ricaricare il tuo Samsung Galaxy S6 semplicemente appoggiandolo sul Wireless Charger.\n* Il tempo di ricarica e la durata della batteria possono variare in base al tipo di utilizzo. La batteria può durare meno di 2 ore se si guarda un film in HD o un video a una risoluzione maggiore.\n* Disponibile per caricabatterie senza fili compatibili con WPC e PMA\n* Il caricabatterie senza fili non è incluso\n \nUna performance da standing-ovation.\n\nPrestazioni così straordinarie restano impresse: con Samsung Galaxy S6, la sua potenza da 64-bit, velocità raddoppiata e apertura di app ancora più rapida, puoi finalmente accedere alle funzioni Multitasking e Multimedia come non avevi mai fatto prima.\n \nUn display che supera ogni aspettativa.\n\nPer regalarti un’esperienza visiva senza precedenti Samsung Galaxy S6 presenta il suo display Quad HD (2560 x 1440) Super AMOLED da 5,1’’. Livelli di luminosità e densità di pixel avanzata ti permetteranno di goderti ogni minimo dettaglio al meglio, sia in ambienti interni che esterni.\n \nAncora più sicuri.\n\nScopri una tranquillità senza precedenti grazie alle potenti soluzioni di sicurezza del Samsung Galaxy S6 : KNOX, uno scanner per impronte digitali.\n \nSmart Manager\n\nCon la nuova applicazione Smart Manager, puoi controllare tante informazioni utili come lo stato della batteria, l''archiviazione, la RAM, la sicurezza e tanto altro; il tutto in modo semplice e immediato.'),
(11, 'iPad Pro 128 GB', 'tablet', 0.00, 1249.90, 'Apple', 0, 'images/prodotti/tablet/11.jpg', 'Wi-Fi + Cellular (4G LTE)\nRetina Display 12.9” (2732x2048) Led IPS\nSistema Operativo iOS 9 (co-processore M9)\nFotocamera iSight da 8 megapixel'),
(12, 'iPad Pro 9.7" 32GB', 'tablet', 0.00, 839.90, 'Apple', 0, 'images/prodotti/tablet/12.jpg', 'iPad Pro 9,7” è un concentrato mai visto di portatilità e prestazioni. È spesso solo 6,1 millimetri e pesa meno di 500 grammi, ma ha il display Retina più luminoso ed evoluto di sempre: con i suoi sensori True Tone si adegua alla luce ambientale, così gli occhi non si affaticano. In più hai il potente chip A9X a 64 bit di livello desktop, audio a quattro altoparlanti, fotocamera iSight e videocamera FaceTime HD, sensore di impronte digitali Touch ID, connessioni ultraveloci su Wi-Fi e 4G LTE e fino a 10 ore di autonomia.2 Advanced,1 ancora di più? Aggiungi l’ultraprecisa Apple Pencil e la Smart Keyboard, e iPad Pro ti diventerà ancora più indispensabile'),
(13, 'iPad Pro 9.7" 128GB', 'tablet', 0.00, 1199.90, 'Apple', 0, 'images/prodotti/tablet/13.jpg', 'Display Retina da 9,7" (diagonale) con True Tone e rivestimento antiriflesso\nChip A9 con architettura a 64 bit di livello desktop\nSensore di impronte digitali Touch ID\nFotocamera iSight da 12MP con video a 4K\nVideocamera FaceTime HD (foto da 5MP)'),
(14, 'Samsung Galaxy TAB A', 'tablet', 0.00, 299.90, 'Samsung', 1, 'images/prodotti/tablet/14.jpg', 'Design sottile e moderno\n\nLo stile essenziale e la cornice metallizzata esaltano il nuovo formato 4:3, donando a Galaxy TAB A un look moderno e sofisticato, garantendo la massima maneggevolezza grazie ai 7,5 millimetri di spessore e solo 456 grammi di peso.\nEsperienza visiva ottimizzata\n\nProgettato per essere il tablet più portatile della categoria, Galaxy TAB A non accetta compromessi, regalandoti uno schermo più ampio rispetto ad altri tablet. Un nuovo display, ideale per visualizzare in modo ottimale presentazioni, siti web, pubblicazioni, e-book ed e-mail.\nFoto perfette con Auto Focus\n\nLa fotocamera da 5 MP con messa a fuoco automatica permette di ottenere immagini sempre chiare e definite con la massima semplicità e in qualsiasi condizione. È anche possibile eseguire facilmente scansioni di codici QR e codici a barre migliorando l''interazione con il mondo che ti circonda.\nInteressanti contenuti e servizi gratuiti\n\nL''esperienza di GALAXY TAB A è arricchita dai numerosi contenuti disponbili per te. Potrai leggere le tue riviste preferite grazie ai 6 mesi inclusi con MagBox e goderti un fantasitico e-book al mese per un anno con Kindle for Samsung.\nPrestazioni eccellenti\n\nGrazie al processore Quad Core da 1.2GHz, 2GB di RAM, alla versione più recente di Android Lollipop e alla funzione Multischermo, è il dispositivo perfetto per chi prova per la prima volta un Tablet e per chi cerca un prodotto performante.\nContenuti divertenti e protetti per i più piccoli\n\nCon la Modalità Bambino i più piccoli possono usare Galaxy Tab A che ha una loro area dedicata. Questa modalità prevede un’interfaccia divertente e protetta.\nScatto continuo\n\nGrazie alla funzione Scatto Continuo potrete catturare rapidamente una serie successiva di scatti per immortalare ogni momento in rapida successione senza perdere nemmeno un secondo. Lo Scatto Continuo può essere attivato semplicemente tenendo premuta l''icona di scatto.\nConnessione senza problemi\n\nLa Connessione Rapida* e Bluetooth tra SmartTV e TAB A controlla il TV dal Tablet, condivide i contenuti, e trasforma il tablet in un secondo display TV.*Funzione disponibile solo con i prodotti Tizen TV con Bluetooth in vendita dal 2015 o successivi.'),
(15, 'Huawei MediaPad T1 10 LTE', 'tablet', 0.00, 249.90, 'Huawei', 0, 'images/prodotti/tablet/15.jpg', 'Display 9.6” PS\nSistema Operativo Android™ 4.4\nProcessore Snapdragon™ 200 QuadCore 1.2 GHz'),
(16, 'iPad Mini 4 16GB', 'tablet', 0.00, 529.90, 'Apple', 0, 'images/prodotti/tablet/16.jpg', 'La mini superpotenza.\n\nA vederlo sembra davvero piccolo, ma è pronto a stupirti con prestazioni eccezionali: il nuovo iPad mini 4, più sottile e leggero che mai, ha tutta la potenza che ti serve per fare grandi cose.\nSottile come sempre. Leggero come mai.\n\niPad mini 4 contiene tutto quello che ami dell’iPad in un design ancora più leggero e portatile. Chiama gli amici con FaceTime o portati avanti con il lavoro: puoi farlo ovunque, in qualsiasi momento.\nPiccolo, ma con i superpoteri.\n\n'),
(17, 'Samsung Galaxy TAB S2', 'tablet', 0.00, 539.90, 'Samsung', 1, 'images/prodotti/tablet/17.png', '4GPLUS\nDisplay 9.7” TFT, 2048x1536 QXGA (4:3)\nSistema Operativo AndroidTM 5.0.2 (Lollipop)\nMemoria interna 32GB (espandibile fino a 128GB)\nFotocamera (Front: 2.1 MP Back: 8 MP )'),
(18, 'Samsung Galaxy Tab Pro', 'tablet', 0.00, 1299.90, 'Samsung', 0, 'images/prodotti/tablet/18.jpg', 'DESIGN SOTTILE&LEGGERO\n\nGalaxy TabPro S rappresenta il perfetto connubio tra design e tecnologia. Estremamente sottile e leggero, stupisce per la ricercatezza dei dettagli e la qualità dei materiali.\n\nELEGANTE PROTEZIONE\n\nLa book cover protegge perfettamente Galaxy TabPro S, mantenendone intatta l''eleganza.\n\nDISPLAY SUPER AMOLED\n\nGalaxy TabPro S è il primo prodotto Windows 10 al mondo dotato di display SUPER AMOLED. Lavorare in mobilità è davvero comodo, grazie al display touchscreen da 12 pollici. Indipendentemente dal contenuto visualizzato, che sia una immagine o un video, i colori e la brillantezza delle immagini saranno esaltate dalla definizione e dalla qualità del display SUPER AMOLED di Galaxy TabPro S\n\nINTRATTENIMENTO XBOX ONE GAME STREAMING\n\nCon questa rivoluzionaria funzione, utilizzando la stessa connessione WiFi, potrai giocare in streaming ai giochi della tua XBOX ONE direttamente su Galaxy TabPro S.\n\nPERFORMANCE SENZA COMPROMESSI\n\nIl sistema operativo Windows 10, supportato dalla potenza del nuovo processore Intel Core M, sono una garanzia per lavorare professionalmente in qualunque situazione e in qualsiasi momento.\n\n2-IN-1\n\nNessun compromesso: potente come un PC e portatile come un tablet. Galaxy TabPro S è perfetto in qualunque situazione.\n\nDURATA BATTERIA & RICARICA\n\nLa batteria a lunga durata di Galaxy TabPro S permette di focalizzarsi solamente sulle proprie attività. Completamente carico in sole due ore e mezza, consente un uso continuativo di oltre 10 ore\n\n'),
(19, 'iPad Mini 3 Wi-Fi', 'tablet', 0.00, 519.90, 'Apple', 0, 'images/prodotti/tablet/19.jpg', 'Wi-Fi \nDisplay Retina 7.9” (2048x1536) Led IPS\nSistema Operativo IOS9 (Processore A8)\nFotocamera iSight 8Mpx e 1.2 Mpx'),
(20, 'Samsung Galaxy Note 10.1', 'tablet', 0.00, 479.00, 'Samsung', 0, 'images/prodotti/tablet/20.png', 'Display 10.1”, 1280x800\nSistema Operativo Android™ 4.1\nMemoria Interna 16GB\nFotocamera da 5 Mpixel'),
(21, ' Repeater Wi-Fi ZyXEL AC750', 'modem', 0.00, 49.90, 'ZyXEL', 0, 'images/prodotti/modem/21.jpg', 'ZyXEL WRE6505 Wireless AC750 Range Extender consente di estendere facilmente reti esistenti wireless 802.11 b / g / n / ac in modo facile e veloce. Basta collegare il Repeater direttamente alla presa di corrente e l''indicatore di potenza del segnale LED consente di determinare la posizione di installazione ideale. Il one-click Wi-Fi Protected Setup (WPS Button a pagina 12), prevede l''installazione del client wireless senza frustrazione e completa in pochi passi la configurazione di accesso alla rete.\n\nTre funzionalità in 1 unico prodotto\nCon Zyxel AC750 puoi:\n\nestendere la rete Wi-Fi nella modalità Repeater\ncreare una rete Wi-Fi indipendente da quella, del modem, mediante la funzionalità Access Point\ntrasformare in Wi-Fi un device non dotato di tale feature, sfruttando la funzionalità di Terminal Adapter\nAcquista il repeater ZyXEL AC750 direttamente su questo sito. Lo riceverai a casa tua in consegna gratuita.'),
(22, 'FRITZ!WLAN Repeater 1750E', 'modem', 0.00, 89.90, 'AVM', 0, 'images/prodotti/modem/22.jpg', 'Più rete wireless nel giro di secondi\n\nCon il nuovo FRITZ!WLAN Repeater 1750E si estende la portata delle reti wireless esistenti, creando connessioni veloci e stabili che arrivano a 1300 Mbit/s con lo standard AC sulla banda di frequenza da 5 GHz e a 450 Mbit/s con lo standard N su quella da 2,4 GHz.\n\nPer installarlo basta premere un pulsante\n\nI FRITZ!WLAN Repeater 1750E supportano la facile registrazione automatica con il cosiddetto metodo WPS come i router TIM, come il FRITZ!Box o la maggior parte dei router in commercio. Per la configurazione basta premere un pulsante: i ripetitori e i router WPS come il FRITZ!Box si collegano quindi automaticamente.\n\nLibertà senza fili\n\nCon la sua porta Gigabit LAN, questo ripetitore integra nella rete domestica perfino i dispositivi di rete senza funzione wireless. Il FRITZ!WLAN Repeater 1750E copre via radio la distanza fino al router senza richiedere i cavi anteriormente necessari. E se già esistono cavi, in alternativa si può collegare al router nella modalità "ponte LAN" con un cavo di rete. In questo modo, nemmeno le distanze considerevoli rappresentano più alcun problema'),
(23, 'TIM Modem Wi-Fi Car Pack 4G', 'modem', 0.00, 99.90, 'TIM', 0, 'images/prodotti/modem/23.jpg', 'Acquista il nuovo Car Pack e potrai connetterti anche quando sei in viaggio con tanti vantaggi in più:\n\nModem wi-fi 4G + Alimentatore da auto + servizi ACI Global per 6 mesi (*)\n\nAbbinando un anno di traffico internet puoi acquistare il modem wi-fi Car Pack 4G scontato a 50€ invece di 99,90€. Scopri i dettagli delle offerte annuali: Internet annuale 50GB e Internet annuale 100GB.\n\nL''innovativa tecnologia LTE (Long Term Evolution) consente di raggiungere fino a 70 Mbps in ricezione e 50 Mbps in trasmissione. Il Modem TIM wi-fi Car Pack 4G consente anche il collegamento Wi-Fi fino a 10 dispositivi. Il supporto memoria MicroSD Card fino a 32GB rende possibile condividere file tra gli utenti collegati.\n\n(*) Nella confezione del Modem Car Pack è inclusa una Card che riporta un codice Promozionale ACI Global. Il codice permette di fruire gratuitamente dei seguenti servizi per 6 mesi dalla prima chiamata ad ACI Global: 1 intervento di un carroattrezzi, 1 medico a domicilio, 1 trasporto in ambulanza, tutte le informazioni turistiche e di viaggio che vuoi. L’Operazione a premi è valida dal 15/01/2016 al 15/07/2016. I servizi ACI Global previsti possono essere utilizzati fino al 14/1/2017. Per maggiori dettagli e il regolamento consulta le informazioni sul sito.'),
(24, ' Modem ADSL Wi-Fi ', 'modem', 0.00, 69.00, 'TIM', 0, 'images/prodotti/modem/24.jpg', 'Navigazione veloce e senza fili\n\nCon il Modem ADSL Wi-Fi navighi ad alta velocità e senza fili, utilizzando l''interfaccia Wi-Fi o attraverso le 4 porte Ethernet.\n\nNavigazione più veloce grazie alla tecnologia senza fili Wi-Fi e migliore copertura della rete Wi-Fi della tua abitazione(1).\nProtezione: la cifratura WPA e WPA2 impedisce l’accesso ai non autorizzati alla rete Wi-Fi. Disponibili anche funzionalità avanzate come il filtro degli indirizzi MAC ed il firewall integrato.\nTutta la famiglia connessa: collega tutti i PC, smartphone e tablet al nuovo modem ADSL Wi-Fi e inoltre condividi Hard Disk e stampanti collegati alla porta USB del modem.\nInstallazione no problem: il modem si configura automaticamente sulla tua linea ADSL, senza installare software.\nRisparmia sulla bolletta elettrica: il nuovo modem, rispetto ad un prodotto Telecom Italia di generazione precedente con le stesse funzionalità, consente di risparmiare fino al 40% di energia elettrica su un utilizzo medio annuo (2).\nIl Modem Wi-Fi opera solo su linea ADSL di Telecom Italia ed è compatibile con i principali sistemi operativi (Windows 7, Vista, XP - MacOS 10.3).\n\nAcquista il Modem ADSL Wi-Fi direttamente su questo sito. Lo riceverai a casa tua in consegna gratuita.'),
(25, 'Wi-Fi Bridge Technicolor', 'modem', 0.00, 79.90, 'Technicolor', 0, 'images/prodotti/modem/25.jpg', 'Tre funzionalità in unico prodotto\n\nCon il multimedia connect puoi:\n\nCollegare al modem tramite il Wi-Fi AC a 5GHz una TV, un decoder od un altro apparato\nAssociarlo ad un altro Multimedia Connect (TG234) e creare un ponte Wi-Fi AC a 5GHz\nCreare una rete Wi-Fi AC a 5 GHz indipendente da quella del modem (funzionalità access point)'),
(26, 'Powerline Adapter', 'modem', 0.00, 49.00, 'TIM', 1, 'images/prodotti/modem/26.png', 'Colleghi PC, modem e console sfruttando la rete elettrica\n\nVuoi trasformare la rete elettrica di casa tua in una rete per navigare e trasmettere, dove il wi-fi non arriva, dati in formato digitale?\n\nCon Powerline Adpter puoi farlo.\n\nColleghi tra loro PC, modem e console senza problemi di copertura, distanza, né cablaggi: ti basta inserire Powerline Adapter nelle prese elettriche per creare una rete domestica che connette i vari apparati, con prestazioni fino a 200 Mbps.\n\nE la riservatezza dei dati che trasmetti e ricevi è garantita mediante un sistema di crittografia.\n\nAcquista Powerline Adapter in coppia direttamente su questo sito. Lo riceverai a casa tua in consegna gratuita.'),
(27, 'Tecnoware ERA Plus 900', 'modem', 0.00, 79.90, 'Tecnoware', 0, 'images/prodotti/modem/27.jpg', 'ERA PLUS 900 è un UPS (Uninterruptible Power Supply), cioè un gruppo di continuità, di tipo Line Interactive, realizzato appositamente per proteggere il Modem Fibra di TIM da qualsiasi avaria della rete elettrica (black-out, sottotensioni, sovratensioni, microinterruzioni), causa dei frequenti danneggiamenti di Hardware e Software.\n\nQuando è presente la tensione di rete elettrica, ERA PLUS 900 svolge le funzioni di stabilizzatore e filtra i disturbi frequentemente presenti sulla linea elettrica (transienti, spike, interferenze, etc.), preservando in tal modo il modem ed eventuali altri dispositivi collegati alla sua uscita ad esempio il telefono cordless acquistato insieme all’offerta Fibra di TIM; inoltre ricarica le batterie in modo ottimale.\n\nIn caso di avaria della rete elettrica o caduta di tensione, l’UPS continua ad alimentare il modem ed altre apparecchiature protette ad esempio il telefono cordless garantendo per un lasso di tempo variabile il servizio telefonico e la connettività che sono compromesse in caso di black-out.\n\nERA PLUS presenta tutte le moderne caratteristiche che garantiscono massima affidabilità e sicurezza:\n\nControllo a microprocessore di tutte le funzioni, garanzia di alta affidabilità.\nStabilizzazione in uscita tramite AVR (Automatic Voltage Regulation).\nProtezione da sovraccarico sia nel modo di funzionamento normale che in modo batterie.\nCarica batterie di alte prestazioni che prolunga il tempo medio di vita delle batterie e ne garantisce una ricarica ottimale.\nAccensione anche in condizioni di rete elettrica assente.\nRiaccensione automatica dopo lo spegnimento per fine autonomia al ritorno della tensione di rete.\nAdattabilità automatica alla frequenza d’ingresso 50 o 60 Hz. Segnalazioni acustiche di vario tipo durante il normale funzionamento e che evidenziano le eventuali condizioni di allarme.\nAlta affidabilità.\nElevato rendimento e basso costo d’esercizio.\nDimensioni compatte.\nDesign curato ed ergonomico.\nSemplicità d’uso.\nAcquista ERA Plus 900 direttamente su questo sito. Lo riceverai a casa tua in consegna gratuita.'),
(28, 'Modem Fibra', 'modem', 0.00, 99.00, 'TIM', 0, 'images/prodotti/modem/28.jpg', 'Con il Modem Fibra la Casa è Digitale!\n\nIl Modem Fibra è il centro digitale della Casa che ti permette di navigare ad altissime prestazioni grazie alla doppia banda Wi-Fi (a 2.4 Ghz e a 5 Ghz.) o in alternativa sfruttando le 4 porte Gigabit Ethernet offrendoti il vantaggio di condividere e visualizzare in modo semplice ed immediato contenuti Multimediali (Foto, Musica, Video) su Smart TV, Tablet, PC e Smartphone di ultima generazione sfruttando la tecnologia DLNA e collegando un Hard Disk o una chiavetta USB al modem.\n\nEd i vantaggi non finiscono qui! Puoi mettere in rete la tua stampante semplicemente collegandola alla porta USB del Modem Fibra, potendo così stampare comodamente qualunque documento o foto presente sui tuoi dispositivi connessi al modem.\n\nCollega i tuoi telefoni di casa direttamente al modem\nNaviga con tutti i PC, Tablet e Smartphone anche senza fili\nSfrutta al massimo le performance della tua linea ADSL grazie alla doppia banda Wi-Fi N di ultima generazione\nCondividi in modo semplice ed immediato foto, musica, video, Hard Disk e Stampanti\nInstallazione no problem: il modem si configura automaticamente sulla tua linea ADSL, senza installare software\nApp gratuita "TELEFONO" per trasformare il tuo smartphone in un cordless e sfruttare tutta la convenienza delle nuove offerte Fibra Ottica di Telecom Italia. Scarica subito la App nei Market Android e IOS (Google Play o App Store).\nFunzione Eco per risparmiare sulla bolletta elettrica\nIl Modem Fibra opera solo su linea ADSL di Telecom Italia (ad eccezione di linee “Alice Casa” e “Alice Voce”).\n\nAcquista il Modem Fibra direttamente su questo sito. Lo riceverai a casa tua in consegna gratuita.'),
(29, 'Repeater ZyXEL N300', 'modem', 0.00, 39.00, 'ZyXEL', 0, 'images/prodotti/modem/29.jpg', 'Wi-Fi fino a 300 Mbps a 2.4 GHz\nPer qualsiasi rete 802.11b/g/n\nAggiornamento firmware online\nSi installa premendo un pulsante'),
(30, 'Modem TIM 4G WI-FI', 'modem', 0.00, 79.90, 'TIM', 0, 'images/prodotti/modem/30.jpg', 'L''innovativa tecnologia LTE (Long Term Evolution) consente di raggiungere fino a 70 Mbps in ricezione e 50 Mbps in trasmissione. Il Modem wifi TIM 4G LTE consente anche il collegamento Wi-Fi fino a 10 dispositivi. Il supporto memoria MicroSD Card fino a 32GB rende possibile condividere file tra gli utenti collegati.\n\nLe foto sul sito tim.it riportano tutti i tipi di Modem Wifi 4G: i Modem inclusi nelle confezioni possono essere diversi per forma, peso e colore ma hanno le stesse caratteristiche indicate nella scheda Dettaglio. Acquistando da questo sito, ti verrà spedito uno dei Modem riportati nelle foto secondo le disponibilità del momento'),
(31, 'TIMTag', 'TV', 0.00, 129.00, 'TIM', 0, 'images/prodotti/modem/31.jpg', 'TIMTag è il dispositivo che ti informa sulla posizione del tuo amico a quattro zampe e delle cose a te più care.\nSegui in tempo reale i suoi spostamenti sul tuo smartphone senza perderlo mai di vista.\n\nCon TIMTag hai un dispositivo di localizzazione GPS di ultima generazione, con 12 mesi di servizio TIMTag e una TIM Card inclusi e un'' App dedicata intuitiva e semplice da utilizzare!'),
(32, 'D-Link SmartHome', 'TV', 0.00, 159.90, 'D-Link', 0, 'images/prodotti/tv/32.jpg', 'Con lo Smart Home HD Starter Kit potrai impostare, controllare, monitorare e automatizzare la tua casa ovunque ti trovi.\nNel Kit sono inclusi:\n\nUn Monitor HD (DCS-935L) \nUn Wi-Fi Motion Sensor (DCH-S150)\nUna smart plug (DSP-W215) \nTramite l''App mydlink Home per smartphone e tablet hai a disposizione il controllo di tutti i dispositivi così da semplificarti la gestione della casa rendendola più sicura e intelligente.'),
(33, 'Apple Watch Sport 38', 'TV', 0.00, 369.90, 'Apple', 0, 'images/prodotti/tv/33.jpg', 'Cassa in alluminio anodizzato color argento, grigio siderale\nVetro rinforzato Ion-X\nDisplay Retina con Force Touch\nFondo in materiale composito\nCinturino Sport con borchia in acciaio inox inossidabile\nDigital Crown'),
(34, 'Pack TIMvision&Chromecast', 'TV', 0.00, 39.00, 'TIM', 0, 'images/prodotti/tv/34.jpg', 'Con Chromecast porti TIMvision, i tuoi video, le foto e molto altro ancora su qualsiasi TV usando semplicemente uno smartphone o il tablet ed una connessione Internet Wi-Fi, tutto senza consumare GB.\n\nCon l’App TIMvision potrai vedere cartoni, cinema, serie TV, documentari sempre on demand. Creare il tuo palinsesto senza interruzioni pubblicitarie ed avere più di 8.000 titoli disponibili in un solo abbonamento mensile ed il programma inizia quando vuoi tu sulla TV di casa.'),
(35, 'Cassa Nokia MD 12', 'TV', 0.00, 49.90, 'Nokia', 0, 'images/prodotti/tv/35.png', 'Speaker bluetooth Nokia MD-12 colore bianco. NFC. Ascoltare la tua musica preferita è ora più semplice chemai. Con il suo design ultra - compatto ed una vasta gamma di bellissimi colori , MD -12 è abbastanza piccoloda stare in tasca. Grande esperienza bassi. Non lasciate che la sua piccola dimensione vi inganni . Questopiccolo altoparlante dispone di un grande carico di energia . Progettato con le ultime tecnologie , MD -12 èstato progettato con un attuatore integrato, creando un grande effetto dei bassi quando è impostato su quasiqualsiasi superficie . La durata della batteria superiore per un più divertente ascolto. Con NFC incluso , bastatoccare il tuo telefono cellulare abilitato NFC al diffusore e siete a posto. Oppure utilizzare il Bluetooth edascoltate in streaming i propri brani in modalità wireless e ballate tutta la notte con 15 ore di riproduzionemusicale garantite.'),
(36, 'Samsung Smart TV', 'TV', 0.00, 938.88, 'Samsung', 0, 'images/prodotti/tv/36.jpg', 'Modello 50JU6400 - 50“\nUltra HD - 4K 3840 x 2160\nSoundbar HW-J250 inclusa\nTIMvision incluso'),
(37, 'ZTE SPro 2', 'TV', 0.00, 699.90, 'ZTE', 0, 'images/prodotti/tv/37.jpg', 'Sistema Operativo Android 4.4\nDimensione immagine 20" - 100"\nLuminosità 200 Lumen – Contrasto 5000:1\nProcessore Qualcomm® Snapdragon™ 800 Quad-Core 2.0 GHz'),
(38, 'Samsung Galaxy View LTE', 'TV', 0.00, 799.90, 'Samsung', 0, 'images/prodotti/tv/38.jpg', 'Processore OctaCore 1.6 GHz\nDisplay 18.4” TFT, 1920x1080 Full HD\nSistema Operativo AndroidTM 5.1 (Lollipop)\nMemoria interna 32GB (espandibile fino a 128GB)\nInternet TV'),
(39, 'WeR@Home', 'TV', 0.00, 199.00, 'Essence', 0, 'images/prodotti/tv/39.jpg', 'Con il KIT WeR@Home di Essence  tieni la tua casa sempre sotto controllo!\n\nCon il tuo smartphone e tablet puoi visualizzare in ogni momento cio’ che accade nella tua casa e vieni avvisato se qualcuno vi si introduce. Attivi e disattivi il sistema di allarme, controlli  lo stato dei sensori e visualizzi lo storico degli eventi grazie alle App (iOS e Android) e all’interfaccia WEB dedicate. E’ facile da installare e non necessita di alcun cablaggio o collegamento in casa!'),
(40, 'Decoder TIMVision', 'TV', 0.00, 49.00, 'TIM', 0, 'images/prodotti/tv/40.jpg', 'Collegando il decoder TIMvision ad una linea ADSL/FIBRA TIM o di altro operatore, potrai vedere:\n\nI numerosi titoli compresi nell’abbonamento TIMvisionTV: il grande Cinema, le stagioni complete delle migliori Serie TV, i Cartoni Animati e i programmi per bambini e ragazzi più amati, e tanto altro ancora, come Documentari, Reportage e Musica. I titoli cinematografici più recenti e i grandi successi del passato da noleggiare/acquistare senza dover uscire di casa\nIl meglio delle WEB TV disponibili gratuitamente: ogni settimana circa 1.500 titoli organizzati in sezioni tematiche per coprire gli interessi più svariati. In più, i programmi dell’ultima settimana trasmessi su La7 e l’archivio dei programmi La7 ed MTV.\nHotZone: catalogo con titoli solo per soli adulti da noleggiare o acquistare con carta di credito o pagamento in conto Telecom Italia, in tutta riservatezza. YouTube sulla TV: all’interno di questa applicazione gratuita, esiste anche la possibilità di associare uno smartphone. In tal modo potrai ricercare il video facilmente dal telefonino e vederlo comodamente sullo schermo televisivo.\nI programmi televisivi del Digitale Terrestre in chiaro\nLe fotografie e i video caricati su supporti esterni USB o presenti su dispositivi che supportino lo standard DLNA/UpNP connessi in rete locale\n'),
(41, 'Olivetti My Way', 'outlet', 0.00, 19.00, 'Olivetti', 0, 'images/prodotti/outlet/41.jpg', 'Tecnologia e convenienza\n \nMy Way è una stampante veloce a getto d''inchiostro senza fili, a 6 colori. Un prodotto multifunzione, che è anche scanner e copiatrice a colori. Puoi stabilire un collegamento senza fili al PC(1) oppure ad altri apparati predisposti, come macchina fotografica digitale o telefonino. Ed è possibile il collegamento tramite porte USB 1.1. e 2.0, o via cavo, con tecnologia di trasferimento diretto prictbridge.\n\nLa funzione Photo Index di My Way offre l''anteprima dell’immagine o la programmazione della stampa(2) in miniature 5x4 su foglio A4, selezionando anche formato, numero di copie, presenza di bordi.\n\nAcquista My Way direttamente su questo sito, in promozione solo online fino ad esaurimento scorte. Lo riceverai a casa tua in consegna gratuita.\n\nPuoi scaricare gratuitamente i driver per la tua stampante, compatibili con il Sistema Operativo VISTA. Collegati al sito http://www.olivetti.it/Site/Public/ per scaricare gratuitamente anche i driver di Windows 7.\nPer l’assistenza puoi chiamare il numero verde 848-800570.\n\nNella maschera principale, in alto a destra, clicca su CUSTOMER CARE\nquindi scegli nella tendina DRIVER/FIRMWARE il prodotto di riferimento\nattendi il caricamento e cerca nell’elenco in basso tutti i driver supportati dal prodotto selezionato, disponibili per essere scaricati.\nSe preferisci, puoi anche ordinare il driver a Olivetti, accedendo nella stessa pagina al servizio di e-commerce a pagamento.'),
(42, 'SIRIO.', 'outlet', 0.00, 29.90, 'TIM', 0, 'images/prodotti/outlet/42.jpg', 'SIRIO. è un telefono con filo dal design elegante. E’ dotato di ampio display LCD con data e ora, vivavoce e liste delle chiamate. I tasti grandi, la regolazione del volume della suoneria e la facilità d''uso lo rendono adatto ad ogni esigenza.\nbr>Tra le varie funzioni che caratterizzano il SIRIO. ci sono anche i tasti per richiamare gli ultimi numeri selezionati, per l’esclusione microfono e per l’accesso diretto alla rubrica per selezionare più velocemente i numeri memorizzati. Non necessita di batterie o alimentatori.\n\nE se attivi il servizio CHI E'', sul display potrai visualizzare il numero del chiamante e le liste delle ultime chiamate ricevute.\n\nAcquista SIRIO. direttamente su questo sito. Lo riceverai a casa tua in consegna gratuita.'),
(43, 'Sony Smart Band Fifa Edition', 'outlet', 0.00, 49.90, 'Sony', 0, 'images/prodotti/outlet/43.jpg', 'Braccialetto 250mm\r\nAccelerometro\r\nGiroscopio\r\nNFC'),
(44, 'Samsung Gear Fit', 'outlet', 0.00, 79.90, 'Samsung', 0, 'images/prodotti/outlet/44.jpg', 'L''innovativo schermo curvo da 1,84’’ Super AMOLED Touch Screen e i cinturini intercambiabili di Samsung Gear Fit ti rendono cool e a alla moda anche quando ti alleni. Ti offre inoltre una varietà di colori, sfondi e tipologie di orologio che puoi scegliere secondo le tue preferenze. Così puoi personalizzare il tuo look ogni giorno!\n\nCon Samsung Gear Fit ricevi subito notifiche di Email, SMS, chiamate in arrivo e app così non perdi una notifica per essere sempre in contatto con il tuo mondo. Ma c’è di più, fallo diventare Il tuo Personal Trainer quotidiano! Grazie infatti al sensore di frequenza cardiaca, in modalità allenamento, questo dispositivo ti supporta in tempo reale e ti dà suggerimenti che ti servono durante l''attività fisica per raggiungere i tuoi obiettivi.\n\nTiene sempre traccia delle attività durante la giornata ed è sempre pronto ad accompagnarti grazie al suo design innovativo, confortevole ed ultraleggero (solo 27 gr.) ed in più resistente all’acqua ed alla polvere.\nSamsung Gear Fit è compatibile con una serie di dispositivi:\nGALAXY S5 – GALAXY Note 3/Note II – GALAXY S4/S4 Active/S4 Zoom/S4 mini – GALAXY Note II\n(il numero di dispositivi  compatibili potrebbe aumentare ulteriormente).'),
(45, 'Doro Liberto 820 Mini', 'outlet', 0.00, 159.90, 'Doro', 0, 'images/prodotti/outlet/45.jpg', 'Il piccolo smartphone dalle grandi funzioni.\nDotato di funzionalità di assistenza come un coach incorporato e My Doro Manager, questo smartphone piccolo ma dalle grandi funzioni è perfetto per i principianti.\n\nSistema Operativo Android 4.4\nDisplay 4”\nProcessore Dual Core 1.2 Ghz'),
(46, 'NOKIA Lumia 925', 'outlet', 0.00, 431.00, 'NOKIA', 0, 'images/prodotti/outlet/46.png', 'Nokia presenta il miglior LUMIA di sempre!\n\nIl nuovo top di gamma Nokia infatti condensa e racchiude in un corpo in alluminio sottile e leggero dal design incredibilmente elegante e raffinato il massimo della tecnologia e dei contenuti ad oggi disponibili nel panorama degli smartphone.\n\nIl Nokia LUMIA 925 diviene il nuovo punto di riferimento dell’imaging  grazie alla Fotocamera da ben 8,7 megapixel con sei lenti Carl Zeiss dotata di tecnologia PureView che lo rende perfetto per scattare le foto dei tuoi momenti indimenticabili sia di giorno che di notte. Inoltre con Nokia Smart Camera  puoi scattare una sequenza di immagini per poi scegliere quella che più ti piace e grazie alla funzione Action Shot di Nokia Smart Camera  puoi avere una sequenza di movimenti in un''unica immagine in Alta Definizione. Goditi l’incredibile nitidezza e luminosità di foto e video sul grande display HD+ da 4,5’’, e condividi tutto in tempo reale sui tuoi Social preferiti a portata di mano.  Il Sistema Operativo Windows Phone 8 ha già installate le migliori applicazioni e funzionalità che cerchi. E ancora, puoi lavorare ovunque tu sia con Microsoft Office, ascoltare le tue canzoni preferite su Nokia Musica, scoprire ogni angolo della città con HERE Maps e tanto altro ancora.\n\nInfine, scopri quanto è veloce grazie al processore Snapdragon™ S4 Dual Core da 1,5 GHz\n\nNokia LUMIA 925, Molto più di quello che i tuoi occhi possono vedere!');

-- --------------------------------------------------------

--
-- Table structure for table `prodotti_assistenza`
--

CREATE TABLE IF NOT EXISTS `prodotti_assistenza` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_prodotto` int(11) NOT NULL,
  `id_assistenza` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_assistenza` (`id_assistenza`),
  KEY `id_prodotto` (`id_prodotto`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=252 ;

--
-- Dumping data for table `prodotti_assistenza`
--

INSERT INTO `prodotti_assistenza` (`id`, `id_prodotto`, `id_assistenza`) VALUES
(1, 1, 7),
(2, 40, 27),
(3, 1, 9),
(4, 1, 18),
(5, 1, 19),
(7, 2, 8),
(8, 2, 9),
(9, 2, 18),
(10, 2, 19),
(11, 3, 7),
(12, 3, 8),
(13, 3, 9),
(14, 3, 18),
(15, 3, 19),
(16, 4, 7),
(17, 4, 8),
(18, 4, 9),
(19, 4, 18),
(20, 4, 19),
(21, 5, 7),
(22, 5, 8),
(23, 5, 9),
(24, 5, 18),
(25, 5, 19),
(26, 6, 7),
(27, 6, 8),
(28, 6, 9),
(29, 6, 18),
(30, 6, 19),
(31, 7, 7),
(32, 7, 8),
(33, 7, 9),
(34, 7, 18),
(35, 7, 19),
(36, 8, 7),
(37, 8, 8),
(38, 8, 9),
(39, 8, 18),
(40, 8, 19),
(41, 9, 7),
(42, 9, 8),
(43, 9, 9),
(44, 9, 18),
(45, 9, 19),
(46, 10, 7),
(47, 10, 8),
(48, 10, 9),
(49, 10, 18),
(50, 10, 19),
(51, 11, 24),
(53, 11, 26),
(54, 12, 24),
(56, 12, 26),
(57, 13, 24),
(59, 14, 26),
(61, 15, 26),
(62, 15, 25),
(63, 16, 24),
(64, 16, 25),
(68, 17, 26),
(69, 18, 24),
(70, 18, 27),
(71, 19, 26),
(73, 20, 24),
(76, 21, 3),
(77, 21, 2),
(78, 22, 4),
(80, 22, 2),
(81, 22, 3),
(82, 23, 4),
(84, 23, 6),
(85, 23, 2),
(87, 24, 3),
(88, 24, 4),
(89, 25, 4),
(90, 25, 6),
(92, 26, 2),
(93, 26, 3),
(94, 26, 4),
(95, 26, 5),
(96, 27, 6),
(98, 27, 2),
(99, 27, 3),
(100, 28, 4),
(102, 28, 6),
(104, 29, 2),
(105, 29, 4),
(106, 30, 3),
(107, 30, 5),
(108, 31, 6),
(111, 32, 2),
(114, 34, 2),
(115, 35, 3),
(116, 35, 4),
(117, 36, 4),
(118, 37, 6),
(120, 39, 2),
(121, 40, 3),
(122, 2, 16),
(123, 2, 17),
(124, 41, 4),
(125, 42, 2),
(126, 42, 10),
(127, 42, 6),
(130, 45, 27),
(131, 45, 26),
(132, 46, 25),
(133, 46, 26),
(134, 1, 24),
(135, 1, 26),
(136, 2, 24),
(137, 3, 24),
(138, 3, 25),
(139, 3, 26),
(140, 11, 27),
(141, 12, 27),
(142, 13, 27),
(145, 19, 27),
(146, 20, 27),
(147, 36, 27),
(149, 45, 25),
(151, 4, 24),
(152, 4, 25),
(155, 15, 27),
(156, 1, 8),
(202, 6, 25),
(205, 7, 25),
(209, 9, 25),
(211, 10, 25),
(213, 1, 23),
(214, 2, 23),
(215, 3, 23),
(216, 4, 23),
(217, 5, 23),
(218, 6, 23),
(219, 7, 23),
(220, 8, 23),
(221, 9, 23),
(222, 10, 23),
(223, 3, 20),
(224, 5, 20),
(225, 7, 20),
(226, 9, 20),
(227, 1, 21),
(228, 2, 21),
(229, 4, 21),
(232, 10, 21),
(233, 31, 21),
(234, 42, 11),
(235, 2, 12),
(237, 6, 12),
(238, 8, 12),
(240, 42, 14),
(241, 42, 15),
(243, 5, 16),
(245, 9, 16),
(247, 5, 17),
(248, 6, 17),
(250, 8, 17);

-- --------------------------------------------------------

--
-- Table structure for table `prodotti_smartlife`
--

CREATE TABLE IF NOT EXISTS `prodotti_smartlife` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_prodotto` int(11) NOT NULL,
  `id_smartlife` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_prodotto` (`id_prodotto`),
  KEY `id_smartlife` (`id_smartlife`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=170 ;

--
-- Dumping data for table `prodotti_smartlife`
--

INSERT INTO `prodotti_smartlife` (`id`, `id_prodotto`, `id_smartlife`) VALUES
(1, 1, 2),
(2, 1, 4),
(3, 1, 5),
(6, 2, 2),
(7, 3, 2),
(8, 3, 3),
(9, 3, 4),
(10, 4, 3),
(12, 4, 2),
(16, 6, 3),
(20, 7, 3),
(26, 9, 3),
(29, 10, 3),
(30, 11, 4),
(41, 15, 3),
(42, 15, 4),
(43, 16, 5),
(45, 16, 2),
(46, 16, 3),
(47, 17, 4),
(48, 17, 5),
(50, 18, 2),
(52, 19, 4),
(53, 19, 5),
(55, 20, 2),
(68, 32, 14),
(69, 33, 14),
(70, 34, 14),
(72, 35, 14),
(75, 36, 14),
(77, 37, 14),
(78, 38, 14),
(79, 39, 14),
(80, 40, 14),
(81, 4, 5),
(82, 11, 19),
(83, 11, 1),
(84, 12, 19),
(85, 12, 1),
(86, 13, 19),
(87, 13, 1),
(88, 14, 19),
(89, 14, 1),
(90, 15, 19),
(91, 15, 1),
(92, 16, 19),
(94, 17, 19),
(96, 18, 19),
(97, 18, 1),
(98, 19, 19),
(99, 19, 1),
(100, 20, 19),
(101, 20, 1),
(102, 1, 15),
(103, 2, 15),
(104, 6, 15),
(105, 7, 15),
(106, 9, 16),
(107, 8, 16),
(108, 7, 16),
(109, 6, 16),
(110, 5, 16),
(111, 4, 16),
(112, 9, 17),
(113, 10, 17),
(114, 3, 17),
(115, 8, 17),
(116, 3, 18),
(117, 8, 18),
(118, 2, 18),
(119, 1, 18),
(121, 5, 18),
(122, 40, 1),
(124, 36, 1),
(125, 36, 5),
(126, 21, 19),
(127, 22, 19),
(128, 23, 19),
(129, 24, 19),
(130, 25, 19),
(131, 26, 19),
(132, 27, 19),
(133, 28, 19),
(134, 29, 19),
(135, 30, 19),
(148, 12, 4),
(149, 13, 2),
(153, 14, 4),
(154, 31, 17),
(155, 41, 14),
(156, 42, 14),
(157, 43, 17),
(158, 43, 18),
(159, 44, 17),
(160, 44, 18),
(161, 45, 2),
(162, 45, 3),
(163, 45, 4),
(164, 46, 2),
(165, 46, 3),
(166, 46, 4),
(167, 33, 2),
(168, 11, 2),
(169, 12, 2);

-- --------------------------------------------------------

--
-- Table structure for table `smartlife`
--

CREATE TABLE IF NOT EXISTS `smartlife` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `descrizione` text,
  `sottotitolo` varchar(200) DEFAULT NULL,
  `id_categoria` varchar(100) NOT NULL,
  `url_immagine` varchar(100) NOT NULL,
  `activation_and_rules` text,
  `thumbnail` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `smartlife`
--

INSERT INTO `smartlife` (`id`, `nome`, `descrizione`, `sottotitolo`, `id_categoria`, `url_immagine`, `activation_and_rules`, `thumbnail`) VALUES
(1, 'TIM Vision', 'Cartoni, cinema, serie tv, documentari e concerti sempre on demand per creare il tuo palinsesto senza pubblicità. Più di 8.000 titoli in un abbonamento, senza vincoli di durata, anche in HD', NULL, 'TV', 'images/smartlife/TV/1.jpg', 'Serie tv, cartoni, cinema e documetari dove e quando vuoi a 5€ al mese, decoder incluso.\nSe sei un cliente TIMsmart puoi noleggiare il decoder a 2€/mese.', 'images/smartlife/TV/th1.jpg'),
(2, 'TIMMusic', 'Ascolta milioni di brani in streaming, tutte le novit&agrave; discografiche,\nanteprime esclusive e tante playlist di tutti i generi. Su smartphone\nsenza consumare GB, pc e tablet. Quando vuoi e quanto vuoi.', 'La colonna sonora della tua vita', 'TV', 'images/smartlife/TV/2.jpg', 'Con l''abbonamento TIMmusic ascolti in streaming illimitato, ad alta qualità e senza pubblicità, a 7,99€/mese IVA inclusa.\n\nEd ora, se sei un cliente ADSL e Fibra residenziale Flat TIM che aderisce all’offerta per la prima volta, puoi fruire del primo mese di abbonamento al prezzo scontato di 1,99€ i.i. Dopo i primi 30 giorni il servizio rimane attivo a 7,99€/mese.', 'images/smartlife/TV/th2.jpg'),
(3, 'TIMReading', 'Porta sempre con te su Smartphone e Tablet i tuoi eBook preferiti,\nsegui tutte le tue passioni scegliendo tra i magazine pi&ugrave amati e sfoglia\nil tuo quotidiano dalle prime ore del mattino.\nSu TIMreading trovi ci&ograve; che ami leggere, dove e quando vuoi.', 'Leggi quando vuoi, cosa vuoi', 'TV', 'images/smartlife/TV/3.jpg', 'Vuoi essere informato dalle prime ore del mattino? Con l’offerta Sfoglio Digitale TIM puoi leggere i tuoi giornali preferiti ogni giorno sul tuo PC, tablet o smartphone. Il meglio dell''informazione è sempre con te.\n\nScegli tra le principali testate giornalistiche italiane complete di allegati ed edizioni locali: Corriere della Sera, la Repubblica, Il Messaggero, La Gazzetta dello Sport, La Stampa, Il Mattino, Il Gazzettino, Il Corriere Adriatico,Il Nuovo Quotidiano di Puglia, La Nazione, Il Resto del Carlino e il Giorno.\n\nE con TIM acquisti in carta di credito e il primo mese è gratis!\n\nScopri i dettagli dell''offerta di ciascun giornale e acquista online o nei Negozi TIM.', 'images/smartlife/TV/th3.jpg'),
(4, 'TIMGames', 'Sparatutto, sport estremi, i migliori Classici e molto altro ancora...\nCon TIMgames hai a disposizione centinaia di giochi per il tuo\nsmartphone e tablet, per divertirti dove e quando vuoi.', 'Mettiti in gioco, una nuova sfida ti aspetta!', 'TV', 'images/smartlife/TV/4.jpg', 'Attiva subito I Love Games Promo \n\ndirettamente onlinecliccando sul tasto ATTIVA\nchiamando il numero gratuito 40916 (per clienti ricaricabili) e seguendo la voce guida\ninviando un SMS gratuito al numero 40916 con il testo ILOVEGAMESPROMO ON\nchiamando gratuitamente il Servizio Clienti 119\npresso i Negozi TIM\n \n\n \n\nPuoi disattivare l’offerta in qualsiasi momento gratuitamente:\n\ndirettamente online\nchiamando il numero gratuito 40916 (per clienti ricaricabili) e seguendo la voce guida\ninviando un SMS gratuito al numero 40916 con il testo ILOVEGAMESPROMO OFF\nchiamando gratuitamente il Servizio Clienti 119', 'images/smartlife/TV/th4.jpg'),
(5, 'Serie A TIM', 'Vivi il meglio della Serie A TIM e i migliori momenti del Campionato 2015/2016\r\ncon tutte le notizie, i video-goal, le sintesi sul tuo Smartphone o Tablet\r\ne senza consumare GB. L’unica App ufficiale della Serie A TIM.\r\nScarica l’App e vivi la magia del calcio!', 'Il calcio è di chi lo ama!', 'TV', 'images/smartlife/TV/5.jpg', 'Puoi attivare l''offerta:\n\npresso i Negozi TIM\nAttivazione dei servizi di intrattenimento\n\nPer attivare i 3 mesi di TIMvision, TIMmusic, TIMgames, Serie A TIM, TIMreading con la rivista Elle inclusi nella tua TIM Special, dovrai accedere dal tuo smartphone, con connessione 3G o 4G, alla pagina vai.tim.it\\play e scegliere tra film, musica, riviste, giochi e calcio.', 'images/smartlife/TV/th5.jpg'),
(6, 'Samsung Galaxy Gear S con SIM', 'Un elegante display Super AMOLED\r\n curvo per una vestibilità ottimale, \r\nschermate personalizzabili e cinturini \r\nintercambiabili per esprimere al meglio il proprio stile', NULL, 'salute', 'images/smartlife/salute/6.jpg', 'Puoi trovarlo presso tutti i negozi TIM.', 'images/smartlife/salute/6.jpg'),
(7, 'Polar Loop H7 HR', 'In abbinamento con Polar sensore frequenza Cardiaca. \r\nPer chi desidera misurare la propria attività 24 ore \r\nsu 24 ed essere guidato al raggiungimento di obiettivi giornalieri', NULL, 'salute', 'images/smartlife/salute/7.jpg', 'Puoi trovarlo presso tutti i negozi TIM.', 'images/smartlife/salute/7.jpg'),
(8, 'Polar HR', 'Utilizzato con un''applicazione mobile per lo sport o con un training computer Polar compatibile, \r\nil sensore visualizza in modo estremamente preciso la frequenza cardiaca in tempo reale durante l’allenamento', NULL, 'salute', 'images/smartlife/salute/8.jpg', 'Puoi trovarlo presso tutti i negozi TIM.', 'images/smartlife/salute/8.jpg'),
(9, 'Ihealth HS5', 'Registra le calorie e le attività giornaliere,\r\n pianifica gli obiettivi di peso. Organizza le registrazioni,\r\n i grafici, lo storico delle letture e visualizza le tendenze', NULL, 'salute', 'images/smartlife/salute/9.jpg', 'Puoi trovarlo presso tutti i negozi TIM.', 'images/smartlife/salute/9.jpg'),
(10, 'Samsung Galaxy Gear Fit', 'Tiene sempre traccia delle attività durante la giornata ed è sempre pronto \r\nad accompagnarti grazie al suo design innovativo, \r\nconfortevole ed ultraleggero ed in più resistente all’acqua ed alla polvere', NULL, 'salute', 'images/smartlife/salute/10.jpg', 'Puoi trovarlo presso tutti i negozi TIM.', 'images/smartlife/salute/10.jpg'),
(11, 'Sony Smartband FE', '\r\nUn innovativo braccialetto da polso \r\nin grado di registrare automaticamente\r\n le tue attività fisiche, sociali e di intrattenimento', NULL, 'salute', 'images/smartlife/salute/11.jpg', 'Puoi trovarlo presso tutti i negozi TIM.', 'images/smartlife/salute/11.jpg'),
(12, 'WellUp', 'Un''app gratuita sviluppata come fosse un diario personale, \r\nper disporre in ogni momento di tutte le informazioni sui \r\ncontrolli medici preventivi da effettuare periodicamente per sé e per tutta la famiglia', NULL, 'salute', 'images/smartlife/salute/12.jpg', 'Puoi attivarla scaricandola dallo store.', 'images/smartlife/salute/th12.jpg'),
(14, 'TIM Home Connect', 'La soluzione ideale per gestire tutti i sistemi di domotica presenti nella tua casa,\r\n dalla semplice caldaia domestica, ai sistemi di protezione della casa, ai più avanzati sistemi di monitoraggio.', NULL, 'casa', 'images/smartlife/casa/14.jpg', 'TIM Home Connect è l’offerta pensata per essere utilizzata nei dispositivi di domotica presenti nella casa, la cui gestione prevede l''uso di una SIM\n\nCon Tim Home Connect infatti hai a disposizione minuti, MB e SMS da utilizzare per connettere e gestire il tuo antifurto, la tua caldaia o altri sistemi di domotica.\n\nL''offerta prevede ogni 30 giorni:\n\n20 minuti di chiamate\n100 MB di traffico Internet\n100 SMS verso tutti', 'images/smartlife/casa/th14.jpg'),
(15, 'Pagamenti', 'Scegli le carte di pagamento di Intesa Sanpaolo, BNL o Mediolanum: pagare è semplice e conveniente!', NULL, 'persona', 'images/smartlife/persona/15.jpg', 'Scegli la carta di pagamento che preferisci tra quelle disponibili di Intesa Sanpaolo, Mediolanum, BNL o Hello bank!\nCon TIM Wallet puoi utilizzare il tuo smartphone per pagare in tutti i negozi abilitati.\n\nCOSA TI SERVE PER PAGARE:\nTIM Card\nSMARTPHONE NFC\nTIM Wallet Attivo\n\nCOME EFFETTUARE I PAGAMENTI:\nScarica TIM Wallet\nRichiedi la carta\nPremi "paga"', 'images/smartlife/persona/th15.jpg'),
(16, 'Trasporti', 'Acquista i biglietti dei trasporti della tua città, attraverso il servizio SMS ticketing. Verifica subito se il servizio è già disponibile nella tua città!', NULL, 'persona', 'images/smartlife/persona/16.jpg', 'Apri TIM Wallet e accedi alla Vetrina Servizi. \nSe la città che ti interessa è abilitata, clicca e acquista il biglietto. \nPaghi direttamente con il tuo credito telefonico (se sei un Cliente Ricaricabile) o con addebito in bolletta (se sei un Cliente con Abbonamento). ', 'images/smartlife/persona/th16.jpg'),
(17, 'Fidelity Card', 'Salva nel TIM Wallet le tue carte fedeltà per averle sempre con te', NULL, 'persona', 'images/smartlife/persona/17.jpg', 'Con TIM Wallet puoi virtualizzare le tue carte fedeltà e portarle sempre con te. \nAccedi alla Vetrina Servizi e in pochi passaggi puoi acquisire tutte le tue carte fedelta''. \nInquadra la carta nel riquadro e attendi che venga riconosciuta. \nIl riconoscimento della tessera risulta automatico, tuttavia se la tessera non viene riconosciuta tra le carte presenti puoi comunque aggiungerla utilizzando la fotocamera del tuo smartphone: seleziona il tipo di codice riportato sulla tessera (codice a barre, QRCode o codice numerico) e inquadralo. Se il codice non viene riconosciuto automaticamente, può essere inserito anche manualmente. \nIn breve puoi vedere la tessera nel portafogli. \nPuoi mostrarla nei punti vendita abilitati direttamente dal tuo smartphone: se clicchi sull''immagine della carta in automatico ruota e ti mostra il codice a barre (attenzione: non tutti i punti vendita hanno i lettori di codice a barre abilitati!', 'images/smartlife/persona/th17.jpg'),
(18, 'Coupon', 'Risparmia su un’ampia gamma di prodotti e servizi selezionati da QUI! Group', NULL, 'persona', 'images/smartlife/persona/18.jpg', 'Trova il collegamento al servizio “I coupon consigliati da TIM” dal menu laterale di TIM Wallet. Nella pagina informativa selezionando il tasto “SCOPRI” accedi al sito dove potrai scegliere tra tante offerte speciali. \n\nPuoi ricercare i prodotti delle migliori marche, viaggi da sogno e sconti sui locali più esclusivi della tua città navigando tra le categorie di offerte. \n\nUtilizzando il GPS del tuo smartphone puoi trovare sempre le migliori offerte intorno a te. \n\nIl servizio è offerto ai clienti TIM da QUI! Group attraverso la propria rete commerciale. Il pagamento viene effettuato utilizzando il sistema di carta di credito di QUI! Group. In caso di necessità è necessario contattare il centro assistenza clienti di QUI! Group al numero 010/5389945 (opzione 3).', 'images/smartlife/persona/th18.jpg'),
(19, 'Netflix', 'Serie Tv e film a partire da 7,99 €/mese,dove vuoi e quando vuoi, anche il decoder TIMvision', NULL, 'TV', 'images/smartlife/TV/19.png', '7,99 €/mese Netflix su un solo dispositivo in SD\n\n9,99 €/mese Netflix su due dispositivi in HD\n\n11,99 €/mese Netflix su quattro dispositivi UHD', 'images/smartlife/TV/th19.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `specifiche_tecniche`
--

CREATE TABLE IF NOT EXISTS `specifiche_tecniche` (
  `tecnologia` varchar(1000) DEFAULT NULL,
  `connettività` varchar(1000) DEFAULT NULL,
  `GPS` varchar(1000) DEFAULT NULL,
  `display` varchar(1000) DEFAULT NULL,
  `fotocamera` varchar(1000) DEFAULT NULL,
  `memoria` varchar(1000) DEFAULT NULL,
  `processore` varchar(1000) DEFAULT NULL,
  `formato_SIM` varchar(1000) DEFAULT NULL,
  `video` varchar(1000) DEFAULT NULL,
  `musica` varchar(1000) DEFAULT NULL,
  `in_dotazione` varchar(1000) DEFAULT NULL,
  `dimensioni` varchar(1000) DEFAULT NULL,
  `peso` varchar(1000) DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `id_prodotto` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_prodotto`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `specifiche_tecniche`
--

INSERT INTO `specifiche_tecniche` (`tecnologia`, `connettività`, `GPS`, `display`, `fotocamera`, `memoria`, `processore`, `formato_SIM`, `video`, `musica`, `in_dotazione`, `dimensioni`, `peso`, `note`, `id_prodotto`) VALUES
('Abilitato tecnologia 4G/HSDPA 42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900', 'Wi-Fi - Bluetooth - Micro USB - NFC', 'Integrato', 'Full HD da 5” 1080p, Display TRILUMINOS', 'Posteriore da 23 Mpixel Exmor, Anteriore da 13 Mpxl', 'Interna 3GB - Slot Memory Card Micro SD fino a 200GB', 'Processore Qualcomm® Snapdragon™ 650 Hexa-Core (1.8 GHz + 1.4 GHz)', NULL, 'Video Recorder&Playback', 'MP3 Player - Radio FM', 'Auricolare stereo - Caricabatteria - Cavo dati - Guida di riferimento rapido', '143,7 x 70,5 x 8,6 mm', '165 grammi', 'Stand-by fino a 779 ore - Conversazione fino a 790 min', 1),
('4G cat.4/HSDPA42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900/2100', 'Wi-Fi - Bluetooth - Micro USB - NFC', 'Integrato', '5” 16 Milioni colori Touch', 'Posteriore da 8 Mpxl con flash', '8GB con Slot Memory Card Micro SD fino a 32GB', 'Processore QuadCore 1.3 GHz', 'Nano-sim', 'Video Recorder&Playback', ' MP3 Player - Radio FM', 'Caricabatteria, Cavo dati USB, Manuale d’uso rapido, Auricolare stereo', '144,6x71,5x8,7 mm', '142 gr.', NULL, 2),
('Abilitato tecnologia 4GPlus/4G/HSDPA 42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900MHz', '4G cat.6/HSDPA42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900/2100 Wi-Fi a/b/g/n/ac dual band 2,4/5GHz con Wi-Fi Direct Bluetooth 4.2, BLE USB Type-C, NFC', 'GPS Integrato', 'Display IPS Full HD da 5.2’’', 'Principale 12MP x 2, f/2.2 Leica BSI CMOS Flash dual-tone Frontale 8MP, f/2.4', '32GB', 'Processore Kirin 955 - Octa-Core (4x2,5 GHz + 4x1,8 GHz)', NULL, NULL, NULL, 'Smartphone Auricolari stereo - Caricabatteria Cavo USB Type-C - Estrattore SIM Guida rapida', '145 x 70,9 x 6,95 mm', '144 grammi', 'Stand-by fino a 566 ore - Conversazione fino a 1980 min', 3),
('Abilitato tecnologia 4G/HSPA+/EDGE/GPRS Frequenze 850/900/1800/1900MHz', '4G cat.4/HSPA+/EDGE/GPRS Frequenze 850/900/1800/1900Wi-Fi 802.11 a/b/g/n/ac Wi-Fi Direct, Bluetooth 4.1, NFC, Sensore d''impronta', 'GPS Integrato, A-GPS, Glonass, BeiDou', 'Display Full HD Amoled da 5.5’’’', 'Doppia Fotocamera Leica da 12 Mpxl Dual Flash + anteriore da 8 Mpxl', '4GB, Micro SD fino a 128 GB', 'Processore Kirin 955 - Octa-Core (4x2,5 GHz + 4x1,8 GHz)', NULL, NULL, NULL, 'Smartphone Auricolari stereo - Caricabatteria Cavo USB Type-C - Estrattore SIM Guida rapida', '152.3 x 75.3 x 6.98 mm', '162 grammi', NULL, 4),
('4G/HSDPA42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900/2100', 'Wi-Fi - Bluetooth - Micro USB - NFC', 'Ricevitore GPS Integrato', 'Display 5.2” 16 Milioni colori Touch', 'Fotocamera 13 Mpixel/Flash', 'Memoria interna 16GB - Slot Memory Card Micro SD fino a 128GB', 'Processore QuadCore 1.2 Ghz', 'SIM Micro', 'Video Recorder&Playback', 'MP3 Player - Radio FM', 'Caricabatteria - Cavo dati - Auricolare - Manuale d’uso rapido', '145,8x72,3x8,1 mm', '158 gr', 'Le prestazioni delle batterie dipendono da vari fattori tra cui la vicinanza delle antenne, lo stato delle batterie, la posizione geografica e il tipo di rete utilizzata.', 5),
('iOS 9 e iCloud', '4G LTE Advanced1 e Wi-Fi 802.11a/b/g/n/ac con tecnologia MIMO', NULL, 'Display Retina HD da 4,7" (diagonale) con risoluzione di 1334x750 pixel3D Touch', 'Fotocamera iSight da 12 megapixel con Focus Pixels, True Tone Flash e Live Photos', NULL, 'Chip A9 con coprocessore di movimento M9 integrato', NULL, 'Videocamera FaceTime HD con Retina Flash (foto da 5MP)', NULL, NULL, NULL, NULL, 'Colori: argento, oro, grigio siderale, oro rosa', 6),
('iOS 9 e iCloud', '4G LTE1', NULL, 'Retina Multi-Touch widescreen retroilluminato LED da 4" (diagonale) 1136x640 pixel a 326 ppi', 'Fotocamera iSight da 12 megapixel', NULL, 'Chip A9 con architettura a 64 bit, Coprocessore di movimento M9 integrato', NULL, 'FaceTime HD', NULL, NULL, NULL, NULL, 'Disponibile in Space Grey, Silver, Gold e Rose Gold', 7),
(NULL, 'HSDPA21/UMTS/EDGE/GPRS - Wi-Fi - Bluetooth - Micro USB - Ricevitore GPS Integrato', NULL, '5” 16 Milioni colori Touch', '8 Mpixel/Flash', '8GB - Slot Memory Card Micro SD fino a 32GB', 'DualCore 1.3 GHz', NULL, NULL, NULL, 'Caricabatteria - Cavo Dati – Auricolare stereo - Guida di riferimento rapido', '143,5 x 71,8 x 8,6 mm', '142 gr.', 'Stand-by fino a 500 ore - Conversazione fino a 240 min', 8),
('4G cat.6/HSDPA 42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900', 'Wi-Fi - Bluetooth - Micro USB - NFC ', 'Integrato', '5.2” 16 Milioni colori Touch', '20 Mpixel/Flash', '32 GB', 'HexaCore 1.8 GHz', 'Nano', 'Video Recorder&Playback', 'MP3 Player', 'Caricabatteria standardAuricolare stereo Cavo Dati  USB Type C Manuale d’uso', '45x73,2x8,25 mm', '150 grammi', 'Stand-by fino a 275 ore - Conversazione fino a 1080 min.', 9),
('4G cat.6/HSDPA42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900/2100', 'Wi-Fi - Bluetooth - Micro USB - NFC', 'Integrato', '5.1” 16 Milioni colori Touch', '16 Mpixel/Flash', '32GB', 'OctaCore: (QuadCore 2.1 Ghz+QuadCore 1.5 Ghz)', 'Nano', 'Video Recorder&Playback', 'MP3 Player', 'Caricabatteria - Cavo Dati MicroUSB - Auricolare stereo - Guida di riferimento rapido', '143,4x 70,5x 6,8 mm', '138 gr.', 'Stand-by fino a 490 ore - Conversazione fino a 1020 min', 10),
(NULL, 'LTE /HSDPA-DC 42.2/HSUPA 5.76/, Wi-Fi 802.11a/b/g/n/ac e MIMO, Bluetooth 4.2', NULL, 'Retina Display 12.9”', 'iSight da 8MP', NULL, 'co-processore M9', NULL, 'FaceTime HD', NULL, NULL, NULL, NULL, 'Fino a 10 ore di autonomia', 11),
('', '4G LTE Advanced1, Wi-Fi 802.11ac con tecnologia MIMO', NULL, 'Retina Display 9,7” (diagonale) con True Tone e rivestimento antiriflesso', 'iSight da 12MP con video a 4K', NULL, 'Chip A9X di terza generazione con architettura a 64 bit di livello desktop', NULL, 'FaceTime HD (foto da 5MP)', NULL, NULL, NULL, NULL, 'Richiede un piano dati. La tecnologia 4G LTE è supportata solo in alcuni Paesi e solo da alcuni operatori. La velocità varia a seconda delle condizioni ambientali.', 12),
(NULL, '4G LTE Advanced1, Wi-Fi 802.11ac con tecnologia MIMO', NULL, 'Retina Display 9,7” (diagonale) con True Tone e rivestimento antiriflesso', 'iSight da 12MP con video a 4K', NULL, 'Chip A9X di terza generazione con architettura a 64 bit di livello desktop', NULL, 'FaceTime HD (foto da 5MP)', NULL, NULL, NULL, NULL, ' Richiede un piano dati. La tecnologia 4G LTE è supportata solo in alcuni Paesi e solo da alcuni operatori. La velocità varia a seconda delle condizioni ambientali', 13),
('LTE/HSDPA/HSUPA', 'Wi-Fi 802.11 a/b/g/n - Bluetooth 4.0 - micro USB', NULL, '9.7” TFT,1024x768 (4:3)', 'Front: 2 Mpxl - Back: 5 Mpxl', 'Interna 16GB (espandibile fino a 128GB), 2GB di Ram', 'Snapdragon 410 QuadCore da 1.2 GHz', NULL, NULL, NULL, 'Carica batteria - Manuale d''uso - Cavo dati USB', '242,5 x 166,8 x 7,4 mm', '455 grammi', NULL, 14),
(NULL, 'LTE, HSDPA+ 42.2Mbps/HSUPA 5.76/, Wi-Fi 802.11b/g/n, Bluetooth 3.0', NULL, '9.6" (1280x800) IPS 16M di colori', '2 Fotocamera da 5 Mpx e VGA Lettore multimediale - MP3, WAV, 3GP, AAC, AAC+ e-AAC+, JPG, PNG,GIF, BMP, WMV, H264, Mpeg4, 1080p/30fps', '8GB (espandibile fino a 64GB)', 'Quad-core 1.2GHz', NULL, NULL, NULL, 'Caricabatteria - Manuale d’uso', '248,5 x 150 x8,3 mm', '433 grammi', 'Stand-by fino a 300h', 15),
(NULL, 'LTE /HSDPA-DC 42.2/HSUPA 5.76/, Wi-Fi 802.11a/b/g/n /ac e MIMO, Bluetooth 4.2', NULL, 'Retina Display 7.9” (2048x1536) Led IPS', '2 Fotocamera iSight 8Mpx e 1.2 Mpx', 'Interna 16GB/64GB (non espandibile)', 'A8 con architettura a 64bit a 1.6GHz, 1GB Ram, co-processore M8', NULL, NULL, NULL, 'Carica batteria, Manuale d’uso, Connettore USB Lightning, Impiega Nano-SIM', '203,2x134,8x6,1mm.', '304 gr', NULL, 16),
(NULL, 'LTE cat.6/HSDPA 42.2/HSUPA 5.76/, Wi-Fi 802.11 a/b/g/n/ac, Bluetooth 4.1, micro USB', NULL, 'Display 9.7” TFT, 2048x1536 QXGA (4:3)', 'Fotocamera (Front: 2.1 MP Back: 8 MP)', 'Interna 32GB (espandibile fino a 128GB)3GB di Ram', 'Processore Octa-core,1.9 GHz, 1.3 GHz', NULL, NULL, NULL, 'Carica batteria, Cavo dati Usb, Manuale d’uso', '237,3x169,0x5,6 mm', '392 gr', ' Le prestazioni delle batterie dipendono da vari fattori tra cui la vicinanza delle antenne, lo stato delle batterie, la posizione geografica e il tipo di rete utilizzata.', 17),
(NULL, 'USB 3.1 (C-type), Bluetooth 4.1, Wi-Fi 802.11 802.11 a/b/g/n/ac (MIMO), GPS + GLONASS, NFC, Wi-Fi Direct, Connettore da 3.5 mm per auricolare, Scheda nanoSIM', NULL, 'Display 12” FHD+, 2160x1440 SuperAmoled', 'Fotocamera (Front: 5 MP Back: 5 MP)', '128GB SSD, 4GB di Ram', 'Processore Intel Core M3 (Dualcore 2.2 GHz)', NULL, 'MP4,3GP,WMV,ASF,AVI,MKV', 'MP3,AAC,WAV,WMA,AMR,FLAC', 'Carica batteria, Cavo dati Usb, Manuale d’uso', '290.3x198.8x6.3 mm', '698 gr', ' Le prestazioni delle batterie dipendono da vari fattori tra cui la vicinanza delle antenne, lo stato delle batterie, la posizione geografica e il tipo di rete utilizzata.', 18),
(NULL, 'Wi-Fi 802.11n con tecnologia MIMO + Cellular - 4G LTE più veloce', NULL, 'Retina da 7,9" (diagonale)', 'iSight da 5MP - Videocamera FaceTimeHD', NULL, 'Chip A7', NULL, NULL, NULL, NULL, NULL, NULL, 'Fino a 10 ore di autonomia', 19),
(NULL, 'LTE 100Mps DL, 50Mbps UL/DC-HSDPA 42.2/HSUPA 5.76/Wi-Fi 802.11b/g/n, Bluetooth 4.0', NULL, '10.1” (1280x800) 16M di colori', 'Fotocamera da 5 Mpixel con Flash LED, frontale 1.9 Mpixel', 'Interna 16GB (espandibile con microSD fino a 64GB), 2GB RAM', 'Exynos 4412 Quad-Core 1.4GHz', NULL, NULL, NULL, 'Caricabatteria, Guida di riferimento rapido, Cavo dati, Auricolare stereo, S pen', '262 x 180 x 8.9 mm', '600 gr', 'Stand by fino a 1500 ore; Conversazione fino a 51 ore in chiamata', 20),
('Modalità Ripetitore, Modalità AP, Wi-Fi Protected Setup (WPS), Wi-Fi Multimedia (WMM),Selezione automatica dei canali, Programmazione senza fili, Gestione di potenza di uscita senza fili,Filtraggio degli indirizzi MAC, Modalità di impostazione di copertura.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Wireless Range Extender,Cavo Ethernet,Guida rapida,Certificato di garanzia,CD di supporto', NULL, '98 g', NULL, 21),
('802.11ac (1.300 Mbit/s), 802.11n (450 Mbit/s), 802.11g/a (54 Mbit/s) e 802.11b (11 Mbit/s)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Wireless Range Extender,Cavo Ethernet,Guida rapida', '(L x H x P): circa 76,5 x 155 x 62,6 mm', '151 g circa', NULL, 22),
('DC-HSDPA - HSPA+ - HSDPA - HSUPA - EDGE/GPRS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Modem Internet - TIM Card - Alimentatore di rete - Cavetto USB - Guida Rapida', NULL, NULL, 'La compatibilità è totale per tutti i dispositivi certificati Wi-Fi (802.11b/g/n) e la velocità massima teorica è 30Mbps', 23),
('ADSL/ADSL2+; velocità fino a 20 Mbps down/1 Mbps up', 'Wi-Fi 802.11 b/g/n; velocità di trasferimento fino a 300Mbps', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Guida di installazione; CD autoinstallante (compatibile con Windows 7, Vista, XP- MacOS 10.3); 1 filtro ADSL 2+; 1 cavo Telefonico; 1 cavo Ethernet', NULL, NULL, NULL, 24),
('Wi-Fi IEEE 802.11ac 5 GHz 4x4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Multimedia Connect; Alimentatore; Cavo Ethernet; Guida rapida; Garanzia di conformità; Foglio di sicurezza', NULL, NULL, '2 Porte Ethernet', 25),
('bridge di rete RJ-45 su linea elettrica', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'cavo Ethernet (2 per confezione) - guida di installazione', NULL, NULL, '1 porta Ethernet RJ-45', 26),
('Line Interactive con Stabilizzatore', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cavo d’alimentazione con spina Schuko', '10,1x14,2x27,9 cm', '3,7 Kg', NULL, 27),
('ADSL/ADSL 2+/VDSL', 'Wifi 802.11 b/g/n a 2.4 Ghz e 5 Ghz simultanee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Modem Fibra, filtro DSL con 2 cavi telefonici già collegati, cavo Ethernet con connettori gialli, alimentatore', NULL, NULL, '2 anni di garanzia sul prodotto', 28),
('Wi-Fi b/g/n a 2.4 GHz', 'Associazione al modem ADSL in modalità WPS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Repeater, Cavo Ethernet, Guida rapida di installazione', NULL, NULL, 'Aggiornamento firmware online', 29),
('4G - DC-HSDPA - HSPA+ - HSDPA - HSUPA - EDGE/GPRS', 'Frequenze 4G: 800/1800/2600 Mhz, download fino a 70Mbps, upload fino a 50MbpsDC-HSDPA: 900/2100 Mhz, download fino a 42.2MbpsHSPA+: 900/2100 Mhz, download fino a 21.1 MbpsHSDPA: 900/2100 Mhz, download fino a 14.4 MbpsHSUPA: 900/2100 Mhz, upload fino a 5.76 MbpsEDGE/GPRS: 850/900/1800/1900 Mhz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Modem 4G Wi-Fi - TIM Card con 5 euro di traffico prepagato incluso - Alimentatore da rete - Cavo USB - Guida rapida', NULL, NULL, 'La compatibilità è totale per tutti i dispositivi certificati Wi-Fi (802.11b/g/n).', 30),
(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'L''offerta è rivolta a tutti i Clienti TIM Ricaricabili Consumer.All’attivazione della TIMCard viene attivata l’offerta Tim-Tag in promozione per 12 mesi.', 31),
(NULL, 'Wi-Fi', NULL, 'HD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'colore Bianco', 32),
(NULL, 'Wi-Fi (802.11b/g/n a 2,4GHz)Bluetooth 4.0', NULL, 'Vetro Ion-XDisplay Retina con Force Touch', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33),
(NULL, 'HDMI compatibile CEC (Consumer Eletronic Control)Micro USB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dispositivo: 51,9 x 51,9 x 13,49 mmConfezione: 124,4 mm x 42,85 mm x 124 mmCavo di alimentazione: 1,75 m', '39,1g', NULL, 34),
('MD-12YL', 'Bluetooth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8,4 x 8,4 x 3,8 cm', '181 g', 'colore arancione', 35),
('Smart TV 3D LED', NULL, NULL, 'Risoluzione\r\n1920 x 1080', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 36),
('4G/HSDPA42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900/2100 - Formato SIM Micro', 'Wi-Fi – Bluetooth – USB - MirrorLink - Ricevitore GPS Integrato', NULL, '5" 16 Milioni di colori Touch', NULL, 'Memoria interna 16GB - Slot Memory Card Micro SD fino a 64GB', 'Processore QuadCore 2 GHz', NULL, NULL, NULL, 'Caricabatteria, Auricolare stereo, Cavo Dati USB, Manuale d’uso rapido', '134x131x33 mm', '526 gr.', NULL, 37),
(NULL, 'Connettività WirelessBluetooth 4.1, BLEWi-Fi 802.11 a/b/g/n/ac', NULL, 'Display 18.4” TFT PLS ,1920x1080 Full HD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '451,8x275,8x11,9 mm.', '2,65 kg', NULL, 38),
(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sistema espandibile per adattarsi alle tue esigenze', 39),
(NULL, NULL, NULL, NULL, NULL, 'Ram 1 GByte DDR3', 'Processore Intel ATOM CE 4230', NULL, NULL, NULL, 'Decoder - Cavo alimentazione - Cavo HDMI - Telecomando universale - Batterie - Guida rapida all''installazione', '210 mm x 210 mm x 40 mm', NULL, NULL, 40),
('Ink Jet Photo a 6 colori', '1 USB 2,0, 1 USB 1.1,compatibile PictBridge, compatibilità sistemi operativi Microsoft Windows 98 SE,Me, 2000 e XP MAC OSX 10,2 o succ.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Compatibile con: \r\nMicrosoft Windows 98 SE, ME, 2000, XP e VISTA, MAC OSX 10.2 o succ.', 41),
('Telefono con filo', NULL, NULL, 'LCD a 2 righe alfanumeriche di 16 caratteri + 1 riga di icone', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tasti dedicati:\r\nmute\r\nmenu\r\n2 tasti di scorrimento verticale\r\nrubrica\r\nlista delle chiamate ricevute\r\ntasto ''R'' per l''accesso ai servizi di Telecom Italia\r\ntasto ''richiama'' per la ripetizione degli ultimi numeri selezionati\r\nvivavoce', 42),
(NULL, 'Bluetooth 4.0 Low Energy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '250 mm', '27 gr.', 'Batteria 35mAh', 43),
(NULL, 'Bluetooth 4.0 - Micro USB', NULL, 'Curvo Touch da 1.84” (risoluzione 128x432) a 16M di colori', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '23,4 x 57,4 x 11,95 mm', '27 grammi', 'Resistente ad acqua e polvere (IP67)', 44),
('HSDPA 21/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900', 'Wi-Fi – Bluetooth – Micro USB', 'Integrato', '4” 16 Milioni colori Touch', '5 Mpixel/Flash', NULL, NULL, NULL, NULL, NULL, 'Auricolare stereo - Caricabatteria da tavolo integrato multifunzione (sveglia, orologio, cornice digitale, e lettore musicale) - Cavo dati - Guida di riferimento rapido', '126 x 66 x 11 mm', '132 grammi', 'Stand-by fino a 468 ore - Conversazione fino a 667 mi', 45),
('4G/HSDPA 42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900', 'Bluetooth - Wi-Fi - Micro USB', 'Integrato', '4.5” 16 milioni colori Touch', '8.7 Mpixel/Flash', '16GB', 'Dual Core 1.5 Ghz', NULL, 'Video Recorder&Playback', 'MP3 Player', 'Caricabatteria standard - Auricolare stereo - Cavo dati MicroUSB', '129 x 70,6 x 8,5 mm', '139 grammi', 'Stand by: fino a 432 ore - Conversazione: fino a 1098 minuti', 46);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `prodotti_assistenza`
--
ALTER TABLE `prodotti_assistenza`
  ADD CONSTRAINT `assistenza_prodotto` FOREIGN KEY (`id_assistenza`) REFERENCES `assistenza` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prodotto_assistenza` FOREIGN KEY (`id_prodotto`) REFERENCES `prodotti` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `prodotti_smartlife`
--
ALTER TABLE `prodotti_smartlife`
  ADD CONSTRAINT `prodotto_smartlife` FOREIGN KEY (`id_prodotto`) REFERENCES `prodotti` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `smartlife_prodotto` FOREIGN KEY (`id_smartlife`) REFERENCES `smartlife` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
