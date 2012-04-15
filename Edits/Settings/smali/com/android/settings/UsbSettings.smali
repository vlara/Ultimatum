.class public Lcom/android/settings/UsbSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UsbSettings.java"


# instance fields
.field private mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mMountButton:Landroid/widget/Button;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUnmountButton:Landroid/widget/Button;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 83
    new-instance v0, Lcom/android/settings/UsbSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/UsbSettings$1;-><init>(Lcom/android/settings/UsbSettings;)V

    iput-object v0, p0, Lcom/android/settings/UsbSettings;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 96
    new-instance v0, Lcom/android/settings/UsbSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/UsbSettings$2;-><init>(Lcom/android/settings/UsbSettings;)V

    iput-object v0, p0, Lcom/android/settings/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/UsbSettings;)Landroid/content/BroadcastReceiver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/UsbSettings;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/UsbSettings;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings/UsbSettings;->switchDisplay(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/UsbSettings;)Landroid/hardware/usb/UsbManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/UsbSettings;)Landroid/os/storage/StorageManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/UsbSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/UsbSettings;->setDefaultMode()V

    return-void
.end method

.method private setDefaultMode()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 323
    const-string v0, "ptp"

    iget-object v1, p0, Lcom/android/settings/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 324
    iget-object v0, p0, Lcom/android/settings/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v1, "ptp"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 327
    :goto_16
    return-void

    .line 326
    :cond_17
    iget-object v0, p0, Lcom/android/settings/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v1, "mtp"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_16
.end method

.method private switchDisplay(Z)V
    .registers 5
    .parameter "usbStorageInUse"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 186
    if-eqz p1, :cond_15

    .line 187
    iget-object v0, p0, Lcom/android/settings/UsbSettings;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/android/settings/UsbSettings;->mUnmountButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/android/settings/UsbSettings;->mMountButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 195
    :goto_14
    return-void

    .line 191
    :cond_15
    iget-object v0, p0, Lcom/android/settings/UsbSettings;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/android/settings/UsbSettings;->mUnmountButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/android/settings/UsbSettings;->mMountButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_14
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 135
    .local v0, actionBar:Landroid/app/ActionBar;
    const v1, 0x7f0b0703

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 137
    const-string v1, "usb"

    invoke-virtual {p0, v1}, Lcom/android/settings/UsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    iput-object v1, p0, Lcom/android/settings/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 139
    iget-object v1, p0, Lcom/android/settings/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v1, :cond_38

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "storage"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/android/settings/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 141
    iget-object v1, p0, Lcom/android/settings/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v1, :cond_38

    .line 142
    const-string v1, "UsbSettings"

    const-string v2, "Failed to get StorageManager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_38
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 9
    .parameter "id"

    .prologue
    const v6, 0x7f0b070a

    const v5, 0x104000a

    const/high16 v4, 0x104

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 221
    packed-switch p1, :pswitch_data_b0

    .line 297
    :goto_d
    :pswitch_d
    return-object v0

    .line 223
    :pswitch_e
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b070b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/UsbSettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings/UsbSettings$5;-><init>(Lcom/android/settings/UsbSettings;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_d

    .line 265
    :pswitch_38
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0703

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0709

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/UsbSettings$6;

    invoke-direct {v1, p0}, Lcom/android/settings/UsbSettings$6;-><init>(Lcom/android/settings/UsbSettings;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_d

    .line 278
    :pswitch_5d
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b03c1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0482

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b070c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_d

    .line 282
    :pswitch_84
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b070b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/UsbSettings$7;

    invoke-direct {v2, p0}, Lcom/android/settings/UsbSettings$7;-><init>(Lcom/android/settings/UsbSettings;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_d

    .line 221
    nop

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_38
        :pswitch_d
        :pswitch_5d
        :pswitch_84
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 149
    const v1, 0x7f040099

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 151
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0801d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/UsbSettings;->mMountButton:Landroid/widget/Button;

    .line 152
    iget-object v1, p0, Lcom/android/settings/UsbSettings;->mMountButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/UsbSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/UsbSettings$3;-><init>(Lcom/android/settings/UsbSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    const v1, 0x7f0801d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/UsbSettings;->mUnmountButton:Landroid/widget/Button;

    .line 175
    iget-object v1, p0, Lcom/android/settings/UsbSettings;->mUnmountButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/UsbSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/UsbSettings$4;-><init>(Lcom/android/settings/UsbSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    const v1, 0x7f0801d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/settings/UsbSettings;->mProgressBar:Landroid/widget/ProgressBar;

    .line 182
    return-object v0
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 212
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 214
    iget-object v0, p0, Lcom/android/settings/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/settings/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_12

    .line 215
    iget-object v0, p0, Lcom/android/settings/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 217
    :cond_12
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 199
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 201
    iget-object v1, p0, Lcom/android/settings/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 204
    :try_start_a
    iget-object v1, p0, Lcom/android/settings/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/UsbSettings;->switchDisplay(Z)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_13} :catch_14

    .line 208
    :goto_13
    return-void

    .line 205
    :catch_14
    move-exception v0

    .line 206
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "UsbSettings"

    const-string v2, "Failed to read UMS enable state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method
