

sudo chown -R root:wheel /Applications/voltageshift/VoltageShift.kext/
sudo chmod -R 755 /Applications/voltageshift/voltageshift.kext/

sudo rm -rf /Library/Logs/

rm -rf ~/Library/Accounts/
rm -rf ~/Library/Logs/
rm -rf ~/Library/Application\ Support/App\ Store
rm -rf ~/Library/Application\ Support/CrashReporter
rm -rf ~/Library/Application\ Support/iCloud

# user
TODISABLE=()

# Game Center / Passbook / Apple TV / Homekit...
TODISABLE+=('com.apple.gamed' \
	'com.apple.passd' \
	'com.apple.Maps.pushdaemon' \
	'com.apple.videosubscriptionsd' \
	'com.apple.CommCenter-osx' \
	'com.apple.homed')

# Ad-related # Apple feedback
TODISABLE+=('com.apple.ap.adprivacyd' \
    'com.apple.appleseed.fbahelperd' \
    'com.apple.appleseed.seedusaged' \
    'com.apple.ap.adservicesd'
    )


# Screensharing
TODISABLE+=('com.apple.screensharing.MessagesAgent' \
	'com.apple.screensharing.agent' \
	'com.apple.screensharing.menuextra'
	)

# Siri
TODISABLE+=('com.apple.siriknowledged' \
	'com.apple.assistant_service' \
	'com.apple.assistantd' \
	'com.apple.Siri.agent' \
'com.apple.siriactionsd' \
    'com.apple.coreparsec.silhouette' \
    'com.apple.parsecd' \
	'com.apple.parsec-fbf'\
	'com.apple.corespeechd')

# Sidecar
TODISABLE+=('com.apple.sidecar-hid-relay' \
	'com.apple.sidecar-relay')

TODISABLE+=('com.apple.spindump_agent' \
    #'com.apple.coreservices.uiagent' \
	'com.apple.ReportCrash' \
	'com.apple.ReportGPURestart' \
	'com.apple.ReportPanic' \
    'com.apple.thermaltrap' \
    'com.apple.talagent' \
	'com.apple.DiagnosticReportCleanup' \
    'com.apple.diagnostics_agent' \
    'com.apple.ExpansionSlotNotification' \
    'com.apple.coreservices.useractivityd' \
    'com.apple.WiFiVelocityAgent' \
    'com.apple.warmd_agent' \
    'com.apple.knowledge-agent' \
	#'com.apple.TrustEvaluationAgent' 
    )

# Others - iCloud
TODISABLE+=('com.apple.powerchime' \
	 'com.apple.amsengagementd' \
    'com.apple.photoanalysisd' \
    'com.apple.mediaanalysisd' \
    'com.apple.diskspaced' \
    'com.apple.telephonyutilities.callservicesd'
    'com.apple.icloud.findmydeviced.findmydevice-user-agent' \
    'com.apple.icloud.fmfd'\
'com.apple.iCloudUserNotifications'\
'com.apple.SocialPushAgent' \
'com.apple.sociallayerd' \
'com.apple.touristd' \
    'com.apple.macos.studentd' \
	'com.apple.newsd' \
    'com.apple.exchange.exchangesyncd' \
'com.apple.suggestd' \
    'com.apple.proactiveeventtrackerd.plist'

    )

# Others - Safari

TODISABLE+=('com.apple.SafariCloudHistoryPushAgent' \
    'com.apple.Safari.SafeBrowsing.Service' \
	'com.apple.Safari.SafariBookmarksSyncAgent' \
    'com.apple.SafariNotificationAgent' \
    'com.apple.SafariPlugInUpdateNotifier' \
	'com.apple.SafariPasswordBreachAgent' \
    'com.apple.SafariHistoryServiceAgent' \
    'com.apple.SafariLaunchAgent' \
	'com.apple.SafariNotificationAgent' \
    'com.apple.SafariPlugInUpdateNotifier' \
    'com.apple.safaridavclient'
    )

TODISABLE+=('com.apple.accessibility.MotionTrackingAgent' \
'com.apple.accessibility.AXVisualSupportAgent' \
'com.apple.accessibility.dfrhud' \
'com.apple.accessibility.heard'\
'com.apple.AddressBook.ContactsAccountsService' \
'com.apple.AMPArtworkAgent' \
'com.apple.AMPDeviceDiscoveryAgent' \
'com.apple.AMPLibraryAgent' \
'com.apple.ap.adprivacyd' \
'com.apple.ap.adservicesd' \
'com.apple.ap.promotedcontentd' \
'com.apple.assistant_service' \
'com.apple.assistantd' \
'com.apple.AssistiveControl' \
'com.apple.avconferenced' \
'com.apple.BiomeAgent' \
'com.apple.biomesyncd' \
'com.apple.CalendarAgent' \
'com.apple.calaccessd' \
'com.apple.CallHistoryPluginHelper' \
'com.apple.cloudd' \
'com.apple.cloudpaird' \
'com.apple.cloudphotod' \
'com.apple.CloudPhotosConfiguration' \
'com.apple.CloudSettingsSyncAgent' \
'com.apple.CommCenter-osx' \
'com.apple.ContactsAgent' \
'com.apple.CoreLocationAgent' \
'com.apple.coreparsec.silhouette' \
'com.apple.dataaccess.dataaccessd' \
'com.apple.donotdisturbd.plist' \
'com.apple.DwellControl' \
'com.apple.ensemble' \
'com.apple.ExpansionSlotNotification' \
'com.apple.familycircled' \
'com.apple.familycontrols.useragent' \
'com.apple.familynotificationd' \
'com.apple.financed' \
'com.apple.followupd' \
'com.apple.gamed' \
'com.apple.geod' \
'com.apple.geodMachServiceBridge' \
'com.apple.homed' \
'com.apple.icloud.fmfd' \
'com.apple.iCloudNotificationAgent' \
'com.apple.iCloudUserNotifications' \
'com.apple.icloud.searchpartyuseragent' \
'com.apple.imagent' \
'com.apple.imautomatichistorydeletionagent' \
'com.apple.imtransferagent' \
'com.apple.intelligenceplatformd' \
'com.apple.itunescloudd' \
'com.apple.knowledge-agent' \
'com.apple.ManagedClient.cloudconfigurationd' \
'com.apple.ManagedClientAgent.enrollagent' \
'com.apple.Maps.mapspushd' \
'com.apple.Maps.pushdaemon' \
'com.apple.mediaanalysisd' \
'com.apple.networkserviceproxy' \
'com.apple.networkserviceproxy-osx' \
'com.apple.mediastream.mstreamd' \
'com.apple.newsd' \
'com.apple.nsurlsessiond' \
'com.apple.parentalcontrols.check' \
'com.apple.peopled' \
'com.apple.parsec-fbf' \
'com.apple.parsecd' \
'com.apple.passd' \
'com.apple.powerchime' \		
'com.apple.photoanalysisd' \
'com.apple.photolibraryd' \
'com.apple.progressd' \
'com.apple.protectedcloudstorage.protectedcloudkeysyncing' \
'com.apple.quicklook' \
'com.apple.quicklook.ui.helper' \
'com.apple.quicklook.ThumbnailsAgent' \
'com.apple.rapportd-user' \
'com.apple.remindd' \
'com.apple.routined' \
'com.apple.ReportCrash' \
'com.apple.ReportGPURestart' \
'com.apple.ReportPanic' \
'com.apple.SafariCloudHistoryPushAgent' \
'com.apple.screensharing.agent' \
'com.apple.screensharing.menuextra' \
'com.apple.screensharing.MessagesAgent' \
'com.apple.ScreenTimeAgent' \
'com.apple.security.cloudkeychainproxy3' \
'com.apple.sharingd' \
'com.apple.sidecar-hid-relay' \
'com.apple.sidecar-relay' \
'com.apple.Siri.agent' \
'com.apple.siri.context.service' \
'com.apple.macos.studentd' \
'com.apple.ScreenTimeAgent' \
'com.apple.Siri.agent' \
'com.apple.siriknowledged' \
'com.apple.spindump' \
'com.apple.suggestd' \
'com.apple.controlstrip' \
'com.apple.biometrickitd' \
'com.apple.touchbarserver' \
'com.apple.SpacesTouchBarAgent' \
'com.apple.SoftwareUpdateNotificationManager' \
'com.apple.tipsd' \
'com.apple.telephonyutilities.callservicesd' \
'com.apple.TMHelperAgent' \
'com.apple.TMHelperAgent.SetupOffer' \
'com.apple.triald' \
'com.apple.universalaccessd' \
'com.apple.UsageTrackingAgent' \
'com.apple.videosubscriptionsd' \
'com.apple.VoiceOver' \
'com.apple.voicememod' \
'com.apple.WiFiVelocityAgent' \
'com.apple.weatherd')

# Others - MRT
TODISABLE+=('com.apple.MRTa')

for agent in "${TODISABLE[@]}"
do
	launchctl bootout gui/501/${agent}
	launchctl disable gui/501/${agent}
done


# system
TODISABLE=()

TODISABLE=( 'com.apple.coreparsec.silhouette' \
'com.apple.spindump' \
'com.apple.tailspind' \
'com.apple.MRTd' \
'com.apple.familycontrols' \
'com.apple.ap.adprivacyd' \
'com.apple.siriknowledged' \
'com.apple.mobiledeviceupdater' 
)

# findmymac and iCloud
TODISABLE=( 'com.apple.findmymac' \
'com.apple.findmymacmessenger' \
'com.apple.icloud.findmydeviced' \
'com.apple.icloud.searchpartyd' \
'com.apple.familycontrols' 
)

# iCloud
TODISABLE+=('com.apple.analyticsd')

# log debugs
TODISABLE+=(
'com.apple.aslmanager' \
    'com.apple.CrashReporterSupportHelper' \
    'com.apple.AirPlayXPCHelper' \
    'com.apple.DumpGPURestart' \
    'com.apple.DumpPanic.Accessory' \
    'com.apple.DumpPanic' \
	'com.apple.ProcessPanicReport' \
	'com.apple.ReportCrash.Root' \
	'com.apple.ReportCrash.Root.Self' \
	'com.apple.ReportPanicService' \
    'com.apple.SafeEjectGPUStartupDaemon' \ 
    'com.apple.spindump' \
    'com.apple.systemstats.daily' \
'com.apple.systemstats.analysis' \
	'com.apple.systemstats.microstackshot_periodic' \
	'com.apple.symptomsd' \
    'com.apple.sysdiagnose' \
    'com.apple.sysdiagnose_helper' \
    'com.apple.tailspind' \
    'com.apple.thermald' \
    'com.apple.diagnosticd' \
    'com.apple.wifivelocityd'\
    'com.apple.applessdstatistics' )

# managed client
TODISABLE+=(
'com.apple.ManagedClient.cloudconfigurationd' \
	'com.apple.ManagedClient.enroll' \
	'com.apple.ManagedClient' \
	'com.apple.ManagedClient.startup' )

# Microsoft RPC Msrpc
 TODISABLE+=(
    'com.apple.msrpc.echosvc' \
    'com.apple.msrpc.lsarpc' \
    'com.apple.msrpc.mdssvc' \
    'com.apple.msrpc.netlogon' \
    'com.apple.msrpc.wkssvc' \
     'com.apple.msrpc.srvsvc'
     )

# Others
TODISABLE+=(
    'com.apple.ocspd' \
    'com.apple.SafeEjectGPUStartupDaemon' \
'com.apple.firmwaresyncd' \
    #'com.apple.runningboardd' \
'com.apple.softwareupdated' \
'com.apple.softwareupdate_firstrun_tasks' \
    'com.apple.AppleQEMUGuestAgent'
)



TODISABLE+=('com.apple.bootpd' \
'com.apple.backupd' \
'com.apple.backupd-helper' \
'com.apple.biokitaggdd' \
'com.apple.biometrickitd' \
'com.apple.touchbarserver' \
'com.apple.bridgeOSUpdateProxy' \
'com.apple.cloudd' \
'com.apple.cloudpaird' \
'com.apple.cloudphotod' \
'com.apple.CloudPhotosConfiguration' \
'com.apple.CoreLocationAgent' \
'com.apple.coreduetd' \
'com.apple.dhcp6d' \
'com.apple.familycontrols' \
'com.apple.findmymacmessenger' \
'com.apple.followupd' \
'com.apple.FollowUpUI' \
'com.apple.ftp-proxy' \
'com.apple.ftpd' \
'com.apple.GameController.gamecontrollerd' \
'com.apple.icloud.fmfd' \
'com.apple.icloud.searchpartyd' \
'com.apple.itunescloudd' \
'com.apple.locationd' \
'com.apple.ManagedClient.cloudconfigurationd' \
'com.apple.networkserviceproxy' \
'com.apple.netbiosd' \
'com.apple.nsurlsessiond' \
'com.apple.protectedcloudstorage.protectedcloudkeysyncing' \
'com.apple.rapportd' \
'com.apple.screensharing' \
'com.apple.security.cloudkeychainproxy3' \
'com.apple.siri.morphunassetsupdaterd' \
'com.apple.siriinferenced' \
'com.apple.tailspind' \
'com.apple.triald.system' \
'com.apple.wifianalyticsd')

# Others - MRT
TODISABLE+=('com.apple.MRTd')

for daemon in "${TODISABLE[@]}"
do
	sudo launchctl bootout system/${daemon}
	sudo launchctl disable system/${daemon}
done