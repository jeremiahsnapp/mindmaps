<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1288979369209" ID="ID_523468910" MODIFIED="1288983287832" STYLE="bubble" TEXT="Data Backup Methods">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1288979369209" ID="ID_897961002" LINK="http://www.vmware.com/products/vstorage-apis-for-data-protection/" MODIFIED="1288988886592" POSITION="right" STYLE="bubble" TEXT="VADP - vStorage API for Data Protection">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1288979369210" ID="ID_1162381816" LINK="http://www.vmware.com/support/vsphere4/doc/vsp_41_new_feat.html#availability" MODIFIED="1288982451544" STYLE="bubble" TEXT="VADP now offers VSS quiescing support for Windows Server 2008 and Windows Server 2008 R2 servers.&#xa;This enables application-consistent backup and restore operations for Windows Server 2008 and Windows Server 2008 R2 applications.">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1288979369210" ID="ID_908273823" LINK="http://www.vmware.com/support/developer/vddk/vadp_vsphere_backup111.pdf" MODIFIED="1288982171112" TEXT="Designing backup solutions using VADP">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1288979369210" ID="ID_1238504410" MODIFIED="1288982171107" TEXT="VMware Tools installed on Linux&#xa;sync driver provides filesystem consistent vm snapshots&#xa;pre/post-freeze scripts provides opportunity to perform tasks before and after vm snapshot such as quiesce applications to achieve application consistent vm snapshot">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1288979369210" ID="ID_1845018359" LINK="http://blog.scottlowe.org/2010/02/09/partner-exchange-2010-session-techbc0320/" MODIFIED="1288982170930" TEXT="How VMware Leverages Microsoft Volume Shadow Services for Virtual Machine Snapshots">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1288979369210" ID="ID_678547817" LINK="http://deinoscloud.wordpress.com/2010/01/11/vdr-and-quiescing-mechanisms/" MODIFIED="1288983284060" POSITION="left" STYLE="bubble" TEXT="Different States of Consistency">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1288979369210" HGAP="15" ID="ID_1938867183" MODIFIED="1288982535631" STYLE="bubble" TEXT="Crash-consistent quiescing&#xa;&#xa;That is, the image is equivalent to the image left on the system if the power is unexpectedly cycled.&#xa;Some transactions in progress may not complete.&#xa;In addition, image-based backup does not allow for file-based restoration." VSHIFT="-20">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1288979369211" HGAP="23" ID="ID_1694621076" MODIFIED="1288982489961" TEXT="File-system consistent quiescing.&#xa;&#xa;That is, VMware will quiesce the file systems (only for Microsoft&#xae; Windows virtual machines).&#xa;This ensures that no file system writes are pending at the time the snapshot is taken, allowing the creation of file-system consistent backups.&#xa;&#xa;?It seems that Linux should be able to do this too with vmware tools sync driver installed?" VSHIFT="-39">
<font NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="help"/>
</node>
<node CREATED="1288979369211" ID="ID_576884397" MODIFIED="1288982367898" TEXT="Application-consistent quiescing.&#xa;&#xa;That is when VMware tells the application that is has been backed up so that it can clear its transaction logs.&#xa;&#xa;[actually application consistent mostly refers to telling an app to perform necessary tasks like flushing it&apos;s cache to disk etc to ensure consistency of the app&apos;s data state&#xa;- letting the app know it&apos;s been backed up is not required for application consistent quiescing even though it is nice to have]">
<font NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="pencil"/>
</node>
</node>
<node CREATED="1288979369211" ID="ID_1235129123" LINK="http://www.backupcentral.com/mr-backup-blog-mainmenu-47/13-mr-backup-blog/288-windows-vss-overview.html/" MODIFIED="1288983296474" POSITION="right" STYLE="bubble" TEXT="What is Windows VSS (Volume Shadow Copy Services)">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1288979369211" ID="ID_960594461" MODIFIED="1288982170836" TEXT="                                                             Summary of Events&#xa;&#xa;1.  The VSS requestor wants to create a snapshot, but first it must find out what kinds of writers are available.  To do this, it performs a referential VSS query.  The VSS core services responds with the writer(s) that is/are present on the Windows server being asked to create the snapshot.&#xa;&#xa;2.  The requestor then asks each of the writers to do their job -- however they do it -- to get the volumes where the applications reside ready to be snapped.&#xa;&#xa;3.  If the writers are all successful at doing what they needed to do, they communicate this to the requestor.&#xa;&#xa;4.  The requestor then tells the snapshot provider to actually create the snapshot.  Most often the provider will be the one that Windows has built into the operating system, but it can also be a storage system capable of making the snapshot.&#xa;&#xa;5.  If it&apos;s successful, it communicates this back to the requestor and tells it where it can get the data.&#xa;&#xa;6.  If the requestor is successful at backing up the data, it can again communicate to the writers that they can do what they need to do, such as clean out the transaction logs of their applications.">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1288979369212" ID="ID_527704515" LINK="http://kb.vmware.com/selfservice/microsites/search.do?language=en_US&amp;cmd=displayKC&amp;externalId=1007696" MODIFIED="1288982170812" TEXT="Troubleshoot VSS quiesce issues">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1288979369212" ID="ID_559989070" LINK="http://kb.vmware.com/selfservice/microsites/search.do?language=en_US&amp;cmd=displayKC&amp;externalId=1009073" MODIFIED="1288982170811" POSITION="right" STYLE="bubble" TEXT="Troubleshoot VMware snapshot quiescing">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1288979369212" HGAP="147" ID="ID_185504359" LINK="http://virtualkenneth.com/2010/02/27/using-lefthand-snapshot-techniques-within-a-vmware-environment/" MODIFIED="1288982360672" POSITION="left" TEXT="Using LeftHand Snapshot techniques within a VMware Environment" VSHIFT="65">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1288979369212" HGAP="81" ID="ID_1603158737" LINK="http://sourceforge.net/mailarchive/forum.php?thread_name=1b7850920711211219t2dd96e08vf917828a73819aea%40mail.gmail.com&amp;forum_name=open-vm-tools-announce" MODIFIED="1288982358816" POSITION="left" TEXT="vmsync driver on linux makes vm snapshots filesystem consistent" VSHIFT="74">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
</map>
