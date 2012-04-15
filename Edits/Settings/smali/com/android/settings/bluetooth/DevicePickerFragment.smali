.class public final Lcom/android/settings/bluetooth/DevicePickerFragment;
.super Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;
.source "DevicePickerFragment.java"


# instance fields
.field private mCallFromHeadset:Z

.field private mFilterType:I

.field private mLaunchClass:Ljava/lang/String;

.field private mLaunchPackage:Ljava/lang/String;

.field private mNeedAuth:Z

.field private mStartScanOnResume:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;-><init>()V

    return-void
.end method

.method private sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V
    .registers 5
    .parameter "device"

    .prologue
    .line 173
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.action.DEVICE_SELECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 175
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    if-eqz v1, :cond_1b

    .line 176
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    :cond_1b
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 179
    return-void
.end method


# virtual methods
.method addPreferencesForActivity()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 51
    const v2, 0x7f05000f

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/DevicePickerFragment;->addPreferencesFromResource(I)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 54
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mNeedAuth:Z

    .line 55
    const-string v2, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    .line 57
    iget v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/DevicePickerFragment;->setFilter(I)V

    .line 60
    iget v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    if-eq v2, v5, :cond_30

    iget v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    if-ne v2, v6, :cond_32

    .line 62
    :cond_30
    iput-boolean v4, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mCallFromHeadset:Z

    .line 66
    :cond_32
    const-string v2, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    .line 67
    const-string v2, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    .line 70
    const-string v2, "device_policy"

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 72
    .local v1, mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v1, v7}, Landroid/app/admin/DevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v2

    if-nez v2, :cond_62

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b0825

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->finish()V

    .line 83
    :cond_61
    :goto_61
    return-void

    .line 76
    :cond_62
    invoke-virtual {v1, v7}, Landroid/app/admin/DevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v2

    if-ne v2, v4, :cond_61

    iget v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    if-eq v2, v5, :cond_61

    iget v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    if-eq v2, v6, :cond_61

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b0826

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->finish()V

    goto :goto_61
.end method

.method public onBluetoothStateChanged(I)V
    .registers 4
    .parameter "bluetoothState"

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    .line 147
    const/16 v0, 0xc

    if-ne p1, v0, :cond_e

    .line 148
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 152
    :cond_d
    :goto_d
    return-void

    .line 149
    :cond_e
    const/16 v0, 0xa

    if-ne p1, v0, :cond_d

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->finish()V

    goto :goto_d
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0104

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 89
    if-nez p1, :cond_17

    const/4 v0, 0x1

    :goto_14
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    .line 90
    return-void

    .line 89
    :cond_17
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public onDeviceBondStateChanged(Lcom/android/settings/bluetooth/CachedBluetoothDevice;I)V
    .registers 5
    .parameter "cachedDevice"
    .parameter "bondState"

    .prologue
    .line 132
    const/16 v1, 0xc

    if-ne p2, v1, :cond_1a

    .line 133
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 134
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 135
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mCallFromHeadset:Z

    if-nez v1, :cond_1a

    .line 136
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->finish()V

    .line 141
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_1a
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .registers 4
    .parameter "btPreference"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->persistSelectedDeviceInPicker(Landroid/content/Context;Ljava/lang/String;)V

    .line 116
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mCallFromHeadset:Z

    if-eqz v0, :cond_1a

    .line 117
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 128
    :goto_19
    return-void

    .line 119
    :cond_1a
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2a

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mNeedAuth:Z

    if-nez v0, :cond_33

    .line 121
    :cond_2a
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->finish()V

    goto :goto_19

    .line 124
    :cond_33
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    goto :goto_19
.end method

.method public onProfileStateChanged(Lcom/android/settings/bluetooth/LocalBluetoothProfile;II)V
    .registers 6
    .parameter "profile"
    .parameter "newState"
    .parameter "oldState"

    .prologue
    const/4 v1, 0x2

    .line 157
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onProfileStateChanged(Lcom/android/settings/bluetooth/LocalBluetoothProfile;II)V

    .line 158
    instance-of v0, p1, Lcom/android/settings/bluetooth/HeadsetProfile;

    if-eqz v0, :cond_13

    .line 159
    if-ne p2, v1, :cond_12

    iget v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_12

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->finish()V

    .line 169
    :cond_12
    :goto_12
    return-void

    .line 163
    :cond_13
    instance-of v0, p1, Lcom/android/settings/bluetooth/A2dpProfile;

    if-eqz v0, :cond_12

    .line 164
    if-ne p2, v1, :cond_12

    iget v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_12

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->finish()V

    goto :goto_12
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 94
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->addCachedDevices()V

    .line 96
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    if-eqz v0, :cond_13

    .line 97
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    .line 100
    :cond_13
    return-void
.end method
