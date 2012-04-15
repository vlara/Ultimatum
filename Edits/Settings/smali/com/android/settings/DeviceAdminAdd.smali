.class public Lcom/android/settings/DeviceAdminAdd;
.super Landroid/app/Activity;
.source "DeviceAdminAdd.java"


# instance fields
.field mActionButton:Landroid/widget/Button;

.field final mActivePolicies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mAddMsg:Landroid/widget/TextView;

.field mAddMsgEllipsized:Z

.field mAddMsgExpander:Landroid/widget/ImageView;

.field mAddMsgText:Ljava/lang/CharSequence;

.field mAdding:Z

.field final mAddingPolicies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mAdminDescription:Landroid/widget/TextView;

.field mAdminIcon:Landroid/widget/ImageView;

.field mAdminName:Landroid/widget/TextView;

.field mAdminPolicies:Landroid/view/ViewGroup;

.field mAdminWarning:Landroid/widget/TextView;

.field mCancelButton:Landroid/widget/Button;

.field mDPM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field mDeviceAdmin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

.field mHandler:Landroid/os/Handler;

.field mRefreshing:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgEllipsized:Z

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mAddingPolicies:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mActivePolicies:Ljava/util/ArrayList;

    return-void
.end method

.method static setViewVisibility(Ljava/util/ArrayList;I)V
    .registers 5
    .parameter
    .parameter "visibility"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p0, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 274
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_13

    .line 275
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 274
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 277
    :cond_13
    return-void
.end method


# virtual methods
.method getEllipsizedLines()I
    .registers 4

    .prologue
    .line 355
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/android/settings/DeviceAdminAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 358
    .local v0, d:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_18

    const/4 v1, 0x5

    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x2

    goto :goto_17
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "icicle"

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    new-instance v7, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/android/settings/DeviceAdminAdd;->mHandler:Landroid/os/Handler;

    .line 102
    const-string v7, "enterprise_policy"

    invoke-virtual {p0, v7}, Lcom/android/settings/DeviceAdminAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v7, p0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    move-result v7

    const/high16 v8, 0x1000

    and-int/2addr v7, v8

    if-eqz v7, :cond_30

    .line 105
    const-string v7, "DeviceAdminAdd"

    const-string v8, "Cannot start ADD_DEVICE_ADMIN as a new task"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    .line 240
    :goto_2f
    return-void

    .line 110
    :cond_30
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 112
    .local v1, cn:Landroid/content/ComponentName;
    if-nez v1, :cond_62

    .line 113
    const-string v7, "DeviceAdminAdd"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No component specified in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    goto :goto_2f

    .line 120
    :cond_62
    :try_start_62
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v7, v1, v8}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_6b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_62 .. :try_end_6b} :catch_c2

    move-result-object v0

    .line 127
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    new-instance v6, Landroid/content/pm/ResolveInfo;

    invoke-direct {v6}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 128
    .local v6, ri:Landroid/content/pm/ResolveInfo;
    iput-object v0, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 130
    :try_start_73
    new-instance v7, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-direct {v7, p0, v6}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    iput-object v7, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :try_end_7a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_73 .. :try_end_7a} :catch_e0
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_7a} :catch_fe

    .line 144
    const-string v7, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_120

    .line 145
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/settings/DeviceAdminAdd;->mRefreshing:Z

    .line 146
    iget-object v7, p0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v7, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_120

    .line 147
    iget-object v7, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v4

    .line 148
    .local v4, newPolicies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_9c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_b5

    .line 149
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;

    .line 150
    .local v5, pi:Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;
    iget-object v7, p0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iget v8, v5, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;->ident:I

    invoke-virtual {v7, v1, v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v7

    if-nez v7, :cond_11c

    .line 151
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/settings/DeviceAdminAdd;->mRefreshing:Z

    .line 155
    .end local v5           #pi:Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;
    :cond_b5
    iget-boolean v7, p0, Lcom/android/settings/DeviceAdminAdd;->mRefreshing:Z

    if-nez v7, :cond_120

    .line 157
    const/4 v7, -0x1

    invoke-virtual {p0, v7}, Lcom/android/settings/DeviceAdminAdd;->setResult(I)V

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    goto/16 :goto_2f

    .line 121
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v3           #i:I
    .end local v4           #newPolicies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;>;"
    .end local v6           #ri:Landroid/content/pm/ResolveInfo;
    :catch_c2
    move-exception v2

    .line 122
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "DeviceAdminAdd"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to retrieve device policy "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    goto/16 :goto_2f

    .line 131
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    .restart local v6       #ri:Landroid/content/pm/ResolveInfo;
    :catch_e0
    move-exception v2

    .line 132
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v7, "DeviceAdminAdd"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to retrieve device policy "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    goto/16 :goto_2f

    .line 135
    .end local v2           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_fe
    move-exception v2

    .line 136
    .local v2, e:Ljava/io/IOException;
    const-string v7, "DeviceAdminAdd"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to retrieve device policy "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    goto/16 :goto_2f

    .line 148
    .end local v2           #e:Ljava/io/IOException;
    .restart local v3       #i:I
    .restart local v4       #newPolicies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;>;"
    .restart local v5       #pi:Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;
    :cond_11c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_9c

    .line 163
    .end local v3           #i:I
    .end local v4           #newPolicies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;>;"
    .end local v5           #pi:Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;
    :cond_120
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "android.app.extra.ADD_EXPLANATION"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgText:Ljava/lang/CharSequence;

    .line 165
    const v7, 0x7f04003e

    invoke-virtual {p0, v7}, Lcom/android/settings/DeviceAdminAdd;->setContentView(I)V

    .line 167
    const v7, 0x7f080085

    invoke-virtual {p0, v7}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminIcon:Landroid/widget/ImageView;

    .line 168
    const v7, 0x7f080086

    invoke-virtual {p0, v7}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminName:Landroid/widget/TextView;

    .line 169
    const v7, 0x7f080087

    invoke-virtual {p0, v7}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    .line 171
    const v7, 0x7f080089

    invoke-virtual {p0, v7}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    .line 172
    const v7, 0x7f080088

    invoke-virtual {p0, v7}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    .line 173
    iget-object v7, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    new-instance v8, Lcom/android/settings/DeviceAdminAdd$1;

    invoke-direct {v8, p0}, Lcom/android/settings/DeviceAdminAdd$1;-><init>(Lcom/android/settings/DeviceAdminAdd;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v7, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Lcom/android/settings/DeviceAdminAdd;->toggleMessageEllipsis(Landroid/view/View;)V

    .line 182
    const v7, 0x7f08008a

    invoke-virtual {p0, v7}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    .line 183
    const v7, 0x7f08008b

    invoke-virtual {p0, v7}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminPolicies:Landroid/view/ViewGroup;

    .line 184
    const v7, 0x7f080034

    invoke-virtual {p0, v7}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/settings/DeviceAdminAdd;->mCancelButton:Landroid/widget/Button;

    .line 185
    iget-object v7, p0, Lcom/android/settings/DeviceAdminAdd;->mCancelButton:Landroid/widget/Button;

    new-instance v8, Lcom/android/settings/DeviceAdminAdd$2;

    invoke-direct {v8, p0}, Lcom/android/settings/DeviceAdminAdd$2;-><init>(Lcom/android/settings/DeviceAdminAdd;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    const v7, 0x7f08008e

    invoke-virtual {p0, v7}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    .line 191
    iget-object v7, p0, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    new-instance v8, Lcom/android/settings/DeviceAdminAdd$3;

    invoke-direct {v8, p0}, Lcom/android/settings/DeviceAdminAdd$3;-><init>(Lcom/android/settings/DeviceAdminAdd;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2f
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7
    .parameter "id"
    .parameter "args"

    .prologue
    .line 250
    packed-switch p1, :pswitch_data_2e

    .line 267
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v2

    :goto_7
    return-object v2

    .line 252
    :pswitch_8
    const-string v2, "android.app.extra.DISABLE_WARNING"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 253
    .local v1, msg:Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 255
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 256
    const v2, 0x7f0b0482

    new-instance v3, Lcom/android/settings/DeviceAdminAdd$4;

    invoke-direct {v3, p0}, Lcom/android/settings/DeviceAdminAdd$4;-><init>(Lcom/android/settings/DeviceAdminAdd;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 263
    const v2, 0x7f0b0483

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 264
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_7

    .line 250
    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 244
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->updateInterface()V

    .line 246
    return-void
.end method

.method toggleMessageEllipsis(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 343
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 345
    .local v0, tv:Landroid/widget/TextView;
    iget-boolean v1, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgEllipsized:Z

    if-nez v1, :cond_2b

    const/4 v1, 0x1

    :goto_8
    iput-boolean v1, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgEllipsized:Z

    .line 346
    iget-boolean v1, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgEllipsized:Z

    if-eqz v1, :cond_2d

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    :goto_10
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 347
    iget-boolean v1, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgEllipsized:Z

    if-eqz v1, :cond_2f

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getEllipsizedLines()I

    move-result v1

    :goto_1b
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 349
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgEllipsized:Z

    if-eqz v1, :cond_32

    const v1, 0x108027e

    :goto_27
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 352
    return-void

    .line 345
    :cond_2b
    const/4 v1, 0x0

    goto :goto_8

    .line 346
    :cond_2d
    const/4 v1, 0x0

    goto :goto_10

    .line 347
    :cond_2f
    const/16 v1, 0xf

    goto :goto_1b

    .line 349
    :cond_32
    const v1, 0x108027d

    goto :goto_27
.end method

.method updateInterface()V
    .registers 13

    .prologue
    const/16 v9, 0x8

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 280
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminIcon:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 281
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminName:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    :try_start_22
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_37
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_22 .. :try_end_37} :catch_ac

    .line 289
    :goto_37
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_b3

    .line 290
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 296
    :goto_47
    iget-boolean v5, p0, Lcom/android/settings/DeviceAdminAdd;->mRefreshing:Z

    if-nez v5, :cond_101

    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_101

    .line 297
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mActivePolicies:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_be

    .line 298
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v3

    .line 299
    .local v3, policies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_68
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_be

    .line 300
    new-instance v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;

    iget v6, v5, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;->ident:I

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;

    iget-object v7, v5, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;

    iget v8, v5, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;->label:I

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;

    iget v5, v5, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;->description:I

    invoke-direct {v2, v6, v7, v8, v5}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    .line 304
    .local v2, pi:Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;
    iget v5, v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;->label:I

    invoke-virtual {p0, v5}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const-string v6, ""

    invoke-static {p0, v5, v6, v11}, Landroid/widget/AppSecurityPermissions;->getPermissionItemView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/view/View;

    move-result-object v4

    .line 306
    .local v4, view:Landroid/view/View;
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mActivePolicies:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminPolicies:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 299
    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    .line 286
    .end local v1           #i:I
    .end local v2           #pi:Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;
    .end local v3           #policies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;>;"
    .end local v4           #view:Landroid/view/View;
    :catch_ac
    move-exception v0

    .line 287
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_37

    .line 293
    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_b3
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_47

    .line 310
    :cond_be
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mActivePolicies:Ljava/util/ArrayList;

    invoke-static {v5, v10}, Lcom/android/settings/DeviceAdminAdd;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 311
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAddingPolicies:Ljava/util/ArrayList;

    invoke-static {v5, v9}, Lcom/android/settings/DeviceAdminAdd;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 312
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    const v6, 0x7f0b05db

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/DeviceAdminAdd;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    const v5, 0x7f0b05d3

    invoke-virtual {p0, v5}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/DeviceAdminAdd;->setTitle(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    const v6, 0x7f0b05d4

    invoke-virtual {p0, v6}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iput-boolean v10, p0, Lcom/android/settings/DeviceAdminAdd;->mAdding:Z

    .line 339
    :goto_100
    return-void

    .line 318
    :cond_101
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAddingPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_158

    .line 319
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v3

    .line 320
    .restart local v3       #policies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;>;"
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_110
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_158

    .line 321
    new-instance v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;

    iget v6, v5, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;->ident:I

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;

    iget-object v7, v5, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;

    iget v8, v5, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;->label:I

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;

    iget v5, v5, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;->description:I

    invoke-direct {v2, v6, v7, v8, v5}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    .line 325
    .restart local v2       #pi:Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;
    iget v5, v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;->label:I

    invoke-virtual {p0, v5}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iget v6, v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;->description:I

    invoke-virtual {p0, v6}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {p0, v5, v6, v11}, Landroid/widget/AppSecurityPermissions;->getPermissionItemView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/view/View;

    move-result-object v4

    .line 327
    .restart local v4       #view:Landroid/view/View;
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAddingPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminPolicies:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 320
    add-int/lit8 v1, v1, 0x1

    goto :goto_110

    .line 331
    .end local v1           #i:I
    .end local v2           #pi:Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;
    .end local v3           #policies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;>;"
    .end local v4           #view:Landroid/view/View;
    :cond_158
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAddingPolicies:Ljava/util/ArrayList;

    invoke-static {v5, v10}, Lcom/android/settings/DeviceAdminAdd;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 332
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mActivePolicies:Ljava/util/ArrayList;

    invoke-static {v5, v9}, Lcom/android/settings/DeviceAdminAdd;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 333
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    const v6, 0x7f0b05da

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/DeviceAdminAdd;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    const v5, 0x7f0b05d7

    invoke-virtual {p0, v5}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/DeviceAdminAdd;->setTitle(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    const v6, 0x7f0b05d8

    invoke-virtual {p0, v6}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iput-boolean v11, p0, Lcom/android/settings/DeviceAdminAdd;->mAdding:Z

    goto/16 :goto_100
.end method
