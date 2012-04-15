.class public Lcom/android/settings/ApnPreference;
.super Landroid/preference/Preference;
.source "ApnPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static mCurrentChecked:Landroid/widget/CompoundButton;

.field private static mSelectedKey:Ljava/lang/String;


# instance fields
.field private mProtectFromCheckedChange:Z

.field private mSelectable:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 73
    sput-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 74
    sput-object v0, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    .line 70
    invoke-direct {p0}, Lcom/android/settings/ApnPreference;->init()V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    .line 62
    invoke-direct {p0}, Lcom/android/settings/ApnPreference;->init()V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    .line 53
    invoke-direct {p0}, Lcom/android/settings/ApnPreference;->init()V

    .line 54
    return-void
.end method

.method private init()V
    .registers 2

    .prologue
    .line 126
    const v0, 0x7f04000a

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnPreference;->setLayoutResource(I)V

    .line 127
    return-void
.end method

.method private isTetheringEnabled(Landroid/content/Context;)Z
    .registers 16
    .parameter "context"

    .prologue
    .line 190
    const/4 v12, 0x0

    .line 191
    .local v12, usbTethered:Z
    const-string v13, "connectivity"

    invoke-virtual {p1, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 192
    .local v2, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v11

    .line 193
    .local v11, tethered:[Ljava/lang/String;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v7

    .line 194
    .local v7, mUsbRegexs:[Ljava/lang/String;
    move-object v0, v11

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v4, v3

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .local v4, i$:I
    :goto_15
    if-ge v4, v5, :cond_31

    aget-object v8, v0, v4

    .local v8, o:Ljava/lang/String;
    move-object v10, v8

    .line 195
    check-cast v10, Ljava/lang/String;

    .line 196
    .local v10, s:Ljava/lang/String;
    move-object v1, v7

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    :goto_1f
    if-ge v3, v6, :cond_2d

    aget-object v9, v1, v3

    .line 197
    .local v9, regex:Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2a

    const/4 v12, 0x1

    .line 196
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 194
    .end local v9           #regex:Ljava/lang/String;
    :cond_2d
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_15

    .line 200
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v6           #len$:I
    .end local v8           #o:Ljava/lang/String;
    .end local v10           #s:Ljava/lang/String;
    :cond_31
    return v12
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    .line 82
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 84
    .local v5, view:Landroid/view/View;
    const v7, 0x1010001

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 85
    .local v6, widget:Landroid/view/View;
    if-eqz v6, :cond_65

    instance-of v7, v6, Landroid/widget/RadioButton;

    if-eqz v7, :cond_65

    move-object v2, v6

    .line 86
    check-cast v2, Landroid/widget/RadioButton;

    .line 87
    .local v2, rb:Landroid/widget/RadioButton;
    iget-boolean v7, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    if-eqz v7, :cond_75

    .line 88
    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 91
    .local v1, isChecked:Z
    if-eqz v1, :cond_30

    .line 92
    sput-object v2, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 96
    :cond_30
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 97
    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 98
    iput-boolean v9, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 101
    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, salesCode:Ljava/lang/String;
    const-string v7, "DCM"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_65

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 104
    .local v0, context:Landroid/content/Context;
    const-string v7, "wifi"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    iput-object v7, p0, Lcom/android/settings/ApnPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 105
    iget-object v7, p0, Lcom/android/settings/ApnPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v7

    if-nez v7, :cond_62

    invoke-direct {p0, v0}, Lcom/android/settings/ApnPreference;->isTetheringEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_65

    .line 108
    :cond_62
    invoke-virtual {v2, v9}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 117
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #isChecked:Z
    .end local v2           #rb:Landroid/widget/RadioButton;
    .end local v3           #salesCode:Ljava/lang/String;
    :cond_65
    :goto_65
    const/high16 v7, 0x101

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 118
    .local v4, textLayout:Landroid/view/View;
    if-eqz v4, :cond_74

    instance-of v7, v4, Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_74

    .line 119
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    :cond_74
    return-object v5

    .line 113
    .end local v4           #textLayout:Landroid/view/View;
    .restart local v2       #rb:Landroid/widget/RadioButton;
    :cond_75
    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_65
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 7
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x0

    .line 138
    const-string v0, "ApnPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-boolean v0, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_2c

    .line 154
    :goto_2b
    return-void

    .line 143
    :cond_2c
    if-eqz p2, :cond_46

    .line 144
    sget-object v0, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_38

    .line 145
    sget-object v0, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 147
    :cond_38
    sput-object p1, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 149
    sget-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnPreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 151
    :cond_46
    sput-object v3, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 152
    sput-object v3, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    goto :goto_2b
.end method

.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "v"

    .prologue
    .line 157
    if-eqz p1, :cond_30

    const/high16 v4, 0x101

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v4, v5, :cond_30

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 159
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_30

    .line 161
    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, salesCode:Ljava/lang/String;
    const-string v4, "DCM"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 163
    const-string v4, "wifi"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    iput-object v4, p0, Lcom/android/settings/ApnPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 164
    iget-object v4, p0, Lcom/android/settings/ApnPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 179
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #salesCode:Ljava/lang/String;
    :cond_30
    :goto_30
    return-void

    .line 168
    .restart local v0       #context:Landroid/content/Context;
    .restart local v2       #salesCode:Ljava/lang/String;
    :cond_31
    invoke-direct {p0, v0}, Lcom/android/settings/ApnPreference;->isTetheringEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_30

    .line 174
    :cond_37
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 175
    .local v1, pos:I
    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v5, v1

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 176
    .local v3, url:Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.EDIT"

    invoke-direct {v4, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_30
.end method

.method public setChecked()V
    .registers 2

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setSelectable(Z)V
    .registers 2
    .parameter "selectable"

    .prologue
    .line 182
    iput-boolean p1, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    .line 183
    return-void
.end method
