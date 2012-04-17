.class public final Lcom/android/settings/bluetooth/BluetoothDevicePreference;
.super Landroid/preference/Preference;
.source "BluetoothDevicePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;


# static fields
.field private static sDimAlpha:I


# instance fields
.field private final mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

.field private mDisconnectDialog:Landroid/app/AlertDialog;

.field private mOnSettingsClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/high16 v0, -0x8000

    sput v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 4
    .parameter "context"
    .parameter "cachedDevice"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 64
    sget v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    const/high16 v2, -0x8000

    if-ne v1, v2, :cond_23

    .line 65
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 66
    .local v0, outValue:Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010033

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 67
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    const/high16 v2, 0x437f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    .line 70
    .end local v0           #outValue:Landroid/util/TypedValue;
    :cond_23
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 72
    invoke-virtual {p2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_33

    .line 73
    const v1, 0x7f040067

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setWidgetLayoutResource(I)V

    .line 76
    :cond_33
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->onDeviceAttributesChanged()V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method private askDisconnect()V
    .locals 8

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 216
    .local v0, context:Landroid/content/Context;
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 218
    const v5, 0x7f0b00fc

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 220
    :cond_17
    const v5, 0x7f0b00f0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, message:Ljava/lang/String;
    const v5, 0x7f0b00ef

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 223
    .local v4, title:Ljava/lang/String;
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference$1;-><init>(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 229
    .local v1, disconnectListener:Landroid/content/DialogInterface$OnClickListener;
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-static {v0, v5, v1, v4, v6}, Lcom/android/settings/bluetooth/Utils;->showDisconnectDialog(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 231
    return-void
.end method

.method private getBtClassDrawable()I
    .locals 7

    .prologue
    .line 329
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 330
    .local v0, btClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v0, :cond_36

    .line 331
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v5

    sparse-switch v5, :sswitch_data_5e

    .line 347
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 348
    const v4, 0x7f020051

    .line 367
    :goto_19
    return v4

    .line 333
    :sswitch_1a
    const v4, 0x7f020057

    goto :goto_19

    .line 336
    :sswitch_1e
    const v4, 0x7f02004e

    goto :goto_19

    .line 339
    :sswitch_22
    invoke-static {v0}, Lcom/android/settings/bluetooth/HidProfile;->getHidClassDrawable(Landroid/bluetooth/BluetoothClass;)I

    move-result v4

    goto :goto_19

    .line 342
    :sswitch_27
    const v4, 0x7f020053

    goto :goto_19

    .line 351
    :cond_2b
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 352
    const v4, 0x7f020052

    goto :goto_19

    .line 355
    :cond_36
    const-string v5, "BluetoothDevicePreference"

    const-string v6, "mBtClass is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_3d
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v3

    .line 359
    .local v3, profiles:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/bluetooth/LocalBluetoothProfile;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 360
    .local v2, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    invoke-interface {v2, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;)I

    move-result v4

    .line 361
    .local v4, resId:I
    if-eqz v4, :cond_47

    goto :goto_19

    .line 367
    .end local v2           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    .end local v4           #resId:I
    :cond_5a
    const v4, 0x7f020050

    goto :goto_19

    .line 331
    :sswitch_data_5e
    .sparse-switch
        0x100 -> :sswitch_1a
        0x200 -> :sswitch_1e
        0x500 -> :sswitch_22
        0x600 -> :sswitch_27
    .end sparse-switch
.end method

.method private getConnectionSummary()I
    .locals 11

    .prologue
    .line 241
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 243
    .local v1, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    const/4 v9, 0x0

    .line 244
    .local v9, profileConnected:Z
    const/4 v0, 0x0

    .line 245
    .local v0, a2dpNotConnected:Z
    const/4 v3, 0x0

    .line 248
    .local v3, headsetNotConnected:Z
    const/4 v5, 0x0

    .line 249
    .local v5, isA2dpConnected:Z
    const/4 v6, 0x0

    .line 250
    .local v6, isHeadsetConnected:Z
    const/4 v7, 0x0

    .line 252
    .local v7, isHidConnected:Z
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_10
    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 253
    .local v8, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    invoke-virtual {v1, v8}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)I

    move-result v2

    .line 255
    .local v2, connectionStatus:I
    packed-switch v2, :pswitch_data_6c

    goto :goto_10

    .line 258
    :pswitch_24
    invoke-static {v2}, Lcom/android/settings/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result v10

    .line 323
    .end local v2           #connectionStatus:I
    .end local v8           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    :goto_28
    return v10

    .line 261
    .restart local v2       #connectionStatus:I
    .restart local v8       #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    :pswitch_29
    const/4 v9, 0x1

    .line 262
    instance-of v10, v8, Lcom/android/settings/bluetooth/A2dpProfile;

    if-eqz v10, :cond_2f

    .line 263
    const/4 v5, 0x1

    .line 265
    :cond_2f
    instance-of v10, v8, Lcom/android/settings/bluetooth/HeadsetProfile;

    if-eqz v10, :cond_34

    .line 266
    const/4 v6, 0x1

    .line 268
    :cond_34
    instance-of v10, v8, Lcom/android/settings/bluetooth/HidProfile;

    if-eqz v10, :cond_10

    .line 269
    const/4 v7, 0x1

    goto :goto_10

    .line 302
    .end local v2           #connectionStatus:I
    .end local v8           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    :cond_3a
    if-eqz v9, :cond_5a

    .line 303
    if-eqz v5, :cond_44

    if-eqz v6, :cond_44

    .line 304
    const v10, 0x7f0b086e

    goto :goto_28

    .line 305
    :cond_44
    if-eqz v5, :cond_4a

    .line 306
    const v10, 0x7f0b0221

    goto :goto_28

    .line 307
    :cond_4a
    if-eqz v6, :cond_50

    .line 308
    const v10, 0x7f0b0222

    goto :goto_28

    .line 309
    :cond_50
    if-eqz v7, :cond_56

    .line 310
    const v10, 0x7f0b0225

    goto :goto_28

    .line 312
    :cond_56
    const v10, 0x7f0b00f3

    goto :goto_28

    .line 316
    :cond_5a
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v10

    packed-switch v10, :pswitch_data_76

    .line 323
    const/4 v10, 0x0

    goto :goto_28

    .line 318
    :pswitch_63
    const v10, 0x7f0b00fb

    goto :goto_28

    .line 320
    :pswitch_67
    const v10, 0x7f0b086f

    goto :goto_28

    .line 255
    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_24
        :pswitch_29
        :pswitch_24
    .end packed-switch

    .line 316
    :pswitch_data_76
    .packed-switch 0xb
        :pswitch_63
        :pswitch_67
    .end packed-switch
.end method

.method private pair()V
    .locals 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->startPairing()Z

    move-result v0

    if-nez v0, :cond_18

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b01fb

    invoke-static {v0, v1, v2}, Lcom/android/settings/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;I)V

    .line 238
    :cond_18
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 192
    instance-of v0, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_9

    .line 194
    invoke-super {p0, p1}, Landroid/preference/Preference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    .line 197
    .end local p1
    :goto_8
    return v0

    .restart local p1
    :cond_9
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .end local p1
    iget-object v1, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->compareTo(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)I

    move-result v0

    goto :goto_8
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 178
    if-eqz p1, :cond_6

    instance-of v0, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_8

    .line 179
    :cond_6
    const/4 v0, 0x0

    .line 181
    .end local p1
    :goto_7
    return v0

    .restart local p1
    :cond_8
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .end local p1
    iget-object v1, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_7
.end method

.method getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->hashCode()I

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    .line 129
    const-string v3, "bt_checkbox"

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 130
    const-string v3, "bt_checkbox"

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setDependency(Ljava/lang/String;)V

    .line 133
    :cond_10
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_3c

    .line 134
    const v3, 0x7f080139

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 142
    .local v0, deviceDetails:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Lcom/android/settings/bluetooth/DevicePickerActivity;

    if-eqz v3, :cond_5c

    .line 144
    const v3, 0x7f080138

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 145
    .local v1, divider:Landroid/widget/ImageView;
    if-eqz v0, :cond_3c

    .line 146
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    .end local v0           #deviceDetails:Landroid/widget/ImageView;
    .end local v1           #divider:Landroid/widget/ImageView;
    :cond_3c
    :goto_3c
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 162
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v3

    if-ne v3, v5, :cond_5b

    .line 163
    const v3, 0x1020016

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 164
    .local v2, title:Landroid/widget/TextView;
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 165
    const v3, -0xff6601

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    .end local v2           #title:Landroid/widget/TextView;
    :cond_5b
    return-void

    .line 150
    .restart local v0       #deviceDetails:Landroid/widget/ImageView;
    :cond_5c
    if-eqz v0, :cond_3c

    .line 151
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_72

    const/16 v3, 0xff

    :goto_6e
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    goto :goto_3c

    :cond_72
    sget v3, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    goto :goto_6e
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_9

    .line 172
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 174
    :cond_9
    return-void
.end method

.method onClicked()V
    .locals 3

    .prologue
    .line 202
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    .line 204
    .local v0, bondState:I
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 205
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->askDisconnect()V

    .line 211
    :cond_11
    :goto_11
    return-void

    .line 206
    :cond_12
    const/16 v1, 0xc

    if-ne v0, v1, :cond_1d

    .line 207
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connect(Z)V

    goto :goto_11

    .line 208
    :cond_1d
    const/16 v1, 0xa

    if-ne v0, v1, :cond_11

    .line 209
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->pair()V

    goto :goto_11
.end method

.method public onDeviceAttributesChanged()V
    .locals 3

    .prologue
    .line 105
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 107
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getConnectionSummary()I

    move-result v1

    .line 108
    .local v1, summaryResId:I
    if-eqz v1, :cond_2b

    .line 109
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setSummary(I)V

    .line 114
    :goto_12
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getBtClassDrawable()I

    move-result v0

    .line 115
    .local v0, iconResId:I
    if-eqz v0, :cond_1b

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setIcon(I)V

    .line 120
    :cond_1b
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v2

    if-nez v2, :cond_30

    const/4 v2, 0x1

    :goto_24
    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setEnabled(Z)V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->notifyHierarchyChanged()V

    .line 124
    return-void

    .line 111
    .end local v0           #iconResId:I
    :cond_2b
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_12

    .line 120
    .restart local v0       #iconResId:I
    :cond_30
    const/4 v2, 0x0

    goto :goto_24
.end method

.method protected onPrepareForRemoval()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Landroid/preference/Preference;->onPrepareForRemoval()V

    .line 92
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 93
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_14

    .line 94
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 97
    :cond_14
    return-void
.end method

.method public setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    .line 87
    return-void
.end method
