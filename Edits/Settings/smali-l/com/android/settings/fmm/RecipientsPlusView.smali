.class public Lcom/android/settings/fmm/RecipientsPlusView;
.super Landroid/widget/LinearLayout;
.source "RecipientsPlusView.java"


# instance fields
.field private SMSMessage:Landroid/widget/EditText;

.field private mContent:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 49
    iput-object p1, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    iput-object p1, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContext:Landroid/content/Context;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fmm/RecipientsPlusView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/fmm/RecipientsPlusView;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/fmm/RecipientsPlusView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public DoSave()Z
    .locals 15

    .prologue
    const/4 v12, 0x0

    .line 166
    new-instance v8, Lcom/android/internal/util/NVStore;

    invoke-direct {v8}, Lcom/android/internal/util/NVStore;-><init>()V

    .line 167
    .local v8, filenv:Lcom/android/internal/util/NVStore;
    const-string v10, ""

    .line 168
    .local v10, nvData:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/android/internal/util/NVStore;->GetPhPWD()Ljava/lang/String;

    move-result-object v6

    .line 169
    .local v6, MTpwd:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/android/internal/util/NVStore;->GetMTStatus()Z

    move-result v13

    if-eqz v13, :cond_a0

    const-string v5, "1"

    .line 170
    .local v5, MTStatus:Ljava/lang/String;
    :goto_14
    invoke-virtual {p0}, Lcom/android/settings/fmm/RecipientsPlusView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0b070e

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 171
    .local v4, MTSender:Ljava/lang/String;
    iget-object v13, p0, Lcom/android/settings/fmm/RecipientsPlusView;->SMSMessage:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, MTMsg:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/android/internal/util/NVStore;->GetStoredIMSI()Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, Imsi:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/android/internal/util/NVStore;->IsPhLockeEnabled()Z

    move-result v13

    if-eqz v13, :cond_a4

    const-string v2, "1"

    .line 175
    .local v2, MTEnabled:Ljava/lang/String;
    :goto_35
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 178
    const/4 v7, 0x0

    .line 179
    .local v7, count:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_62
    iget-object v13, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v13

    if-ge v9, v13, :cond_e5

    .line 180
    iget-object v13, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fmm/RecipientsMinusView;

    .line 181
    .local v0, ChildView:Lcom/android/settings/fmm/RecipientsMinusView;
    invoke-virtual {v0}, Lcom/android/settings/fmm/RecipientsMinusView;->isExist()Z

    move-result v13

    if-eqz v13, :cond_ce

    .line 182
    invoke-virtual {v0}, Lcom/android/settings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v13

    const-string v14, "+"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_a7

    invoke-virtual {v0}, Lcom/android/settings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v13

    const-string v14, "00"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_a7

    .line 183
    iget-object v13, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContext:Landroid/content/Context;

    const v14, 0x7f0b0725

    invoke-static {v13, v14, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 184
    invoke-virtual {v0}, Lcom/android/settings/fmm/RecipientsMinusView;->setFocus()V

    .line 218
    .end local v0           #ChildView:Lcom/android/settings/fmm/RecipientsMinusView;
    :goto_9f
    return v12

    .line 169
    .end local v1           #Imsi:Ljava/lang/String;
    .end local v2           #MTEnabled:Ljava/lang/String;
    .end local v3           #MTMsg:Ljava/lang/String;
    .end local v4           #MTSender:Ljava/lang/String;
    .end local v5           #MTStatus:Ljava/lang/String;
    .end local v7           #count:I
    .end local v9           #i:I
    :cond_a0
    const-string v5, "0"

    goto/16 :goto_14

    .line 173
    .restart local v1       #Imsi:Ljava/lang/String;
    .restart local v3       #MTMsg:Ljava/lang/String;
    .restart local v4       #MTSender:Ljava/lang/String;
    .restart local v5       #MTStatus:Ljava/lang/String;
    :cond_a4
    const-string v2, "0"

    goto :goto_35

    .line 188
    .restart local v0       #ChildView:Lcom/android/settings/fmm/RecipientsMinusView;
    .restart local v2       #MTEnabled:Ljava/lang/String;
    .restart local v7       #count:I
    .restart local v9       #i:I
    :cond_a7
    add-int/lit8 v7, v7, 0x1

    .line 190
    invoke-virtual {v0}, Lcom/android/settings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_d1

    .line 191
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v0}, Lcom/android/settings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 179
    :cond_ce
    :goto_ce
    add-int/lit8 v9, v9, 0x1

    goto :goto_62

    .line 193
    :cond_d1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "none;"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_ce

    .line 197
    .end local v0           #ChildView:Lcom/android/settings/fmm/RecipientsMinusView;
    :cond_e5
    :goto_e5
    const/4 v13, 0x5

    if-eq v7, v13, :cond_fe

    .line 198
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "none;"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 199
    add-int/lit8 v7, v7, 0x1

    goto :goto_e5

    .line 203
    :cond_fe
    if-eqz v3, :cond_10a

    if-eqz v3, :cond_117

    const-string v13, ""

    invoke-virtual {v3, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_117

    .line 204
    :cond_10a
    iget-object v13, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContext:Landroid/content/Context;

    const v14, 0x7f0b0726

    invoke-static {v13, v14, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto :goto_9f

    .line 209
    :cond_117
    iget-object v12, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContext:Landroid/content/Context;

    const-string v13, "phone"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    .line 210
    .local v11, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 211
    if-eqz v1, :cond_133

    if-eqz v1, :cond_135

    const-string v12, ""

    invoke-virtual {v1, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_135

    :cond_133
    const-string v1, "0000"

    .line 214
    :cond_135
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 216
    sget-object v12, Lcom/android/internal/util/NVStore$datatype;->All:Lcom/android/internal/util/NVStore$datatype;

    invoke-virtual {v8, v10, v12}, Lcom/android/internal/util/NVStore;->writedata(Ljava/lang/String;Lcom/android/internal/util/NVStore$datatype;)V

    .line 218
    const/4 v12, 0x1

    goto/16 :goto_9f
.end method

.method public SetContactNumber(Ljava/util/ArrayList;)V
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, selectedContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v13, 0x3b

    .line 236
    const/4 v2, 0x0

    .line 238
    .local v2, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_4
    iget-object v9, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    if-ge v4, v9, :cond_43

    .line 239
    iget-object v9, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fmm/RecipientsMinusView;

    .line 240
    .local v0, ChildView:Lcom/android/settings/fmm/RecipientsMinusView;
    invoke-virtual {v0}, Lcom/android/settings/fmm/RecipientsMinusView;->isExist()Z

    move-result v9

    if-eqz v9, :cond_40

    .line 241
    invoke-virtual {v0}, Lcom/android/settings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_40

    .line 242
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v2, :cond_43

    .line 243
    add-int/lit8 v3, v2, 0x1

    .end local v2           #count:I
    .local v3, count:I
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 244
    .local v8, result:Ljava/lang/String;
    invoke-virtual {v8, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 245
    .local v7, phNum:Ljava/lang/String;
    invoke-virtual {v0, v7}, Lcom/android/settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v2, v3

    .line 238
    .end local v3           #count:I
    .end local v7           #phNum:Ljava/lang/String;
    .end local v8           #result:Ljava/lang/String;
    .restart local v2       #count:I
    :cond_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 252
    .end local v0           #ChildView:Lcom/android/settings/fmm/RecipientsMinusView;
    :cond_43
    iget-object v9, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    .line 254
    .local v5, mViewIndex:I
    :goto_49
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v2, :cond_84

    .line 255
    iget-object v9, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f04004e

    iget-object v11, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 256
    .local v1, MinusLayout:Landroid/widget/LinearLayout;
    iget-object v9, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 257
    iget-object v9, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v6, v5, 0x1

    .end local v5           #mViewIndex:I
    .local v6, mViewIndex:I
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fmm/RecipientsMinusView;

    .line 259
    .restart local v0       #ChildView:Lcom/android/settings/fmm/RecipientsMinusView;
    add-int/lit8 v3, v2, 0x1

    .end local v2           #count:I
    .restart local v3       #count:I
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 260
    .restart local v8       #result:Ljava/lang/String;
    invoke-virtual {v8, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 261
    .restart local v7       #phNum:Ljava/lang/String;
    invoke-virtual {v0, v7}, Lcom/android/settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v5, v6

    .end local v6           #mViewIndex:I
    .restart local v5       #mViewIndex:I
    move v2, v3

    .line 262
    .end local v3           #count:I
    .restart local v2       #count:I
    goto :goto_49

    .line 263
    .end local v0           #ChildView:Lcom/android/settings/fmm/RecipientsMinusView;
    .end local v1           #MinusLayout:Landroid/widget/LinearLayout;
    .end local v7           #phNum:Ljava/lang/String;
    .end local v8           #result:Ljava/lang/String;
    :cond_84
    return-void
.end method

.method public getCountFilledRecipient()I
    .locals 4

    .prologue
    .line 222
    const/4 v1, 0x0

    .line 223
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget-object v3, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 224
    iget-object v3, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fmm/RecipientsMinusView;

    .line 225
    .local v0, ChildView:Lcom/android/settings/fmm/RecipientsMinusView;
    invoke-virtual {v0}, Lcom/android/settings/fmm/RecipientsMinusView;->isExist()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 226
    invoke-virtual {v0}, Lcom/android/settings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_24

    .line 227
    add-int/lit8 v1, v1, 0x1

    .line 223
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 231
    .end local v0           #ChildView:Lcom/android/settings/fmm/RecipientsMinusView;
    :cond_27
    return v1
.end method

.method public init()V
    .locals 15

    .prologue
    const v14, 0x7f04004e

    const/4 v13, 0x0

    .line 94
    const/4 v3, 0x0

    .line 95
    .local v3, index:I
    new-instance v2, Lcom/android/internal/util/NVStore;

    invoke-direct {v2}, Lcom/android/internal/util/NVStore;-><init>()V

    .line 98
    .local v2, filenv:Lcom/android/internal/util/NVStore;
    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetRec1()Ljava/lang/String;

    move-result-object v6

    .line 99
    .local v6, rec1:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1c

    const-string v11, "none"

    invoke-virtual {v6, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_a8

    .line 100
    :cond_1c
    const-string v6, ""

    .line 109
    :goto_1e
    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetRec2()Ljava/lang/String;

    move-result-object v7

    .line 110
    .local v7, rec2:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_30

    const-string v11, "none"

    invoke-virtual {v7, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_c7

    .line 111
    :cond_30
    const-string v7, ""

    .line 120
    :goto_32
    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetRec3()Ljava/lang/String;

    move-result-object v8

    .line 121
    .local v8, rec3:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_44

    const-string v11, "none"

    invoke-virtual {v8, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_e6

    .line 122
    :cond_44
    const-string v8, ""

    .line 131
    :goto_46
    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetRec4()Ljava/lang/String;

    move-result-object v9

    .line 132
    .local v9, rec4:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_58

    const-string v11, "none"

    invoke-virtual {v9, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_105

    .line 133
    :cond_58
    const-string v9, ""

    .line 142
    :goto_5a
    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetRec5()Ljava/lang/String;

    move-result-object v10

    .line 143
    .local v10, rec5:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6c

    const-string v11, "none"

    invoke-virtual {v10, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_124

    .line 144
    :cond_6c
    const-string v10, ""

    .line 152
    :goto_6e
    iget-object v11, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v11

    if-nez v11, :cond_85

    .line 153
    iget-object v11, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mInflater:Landroid/view/LayoutInflater;

    iget-object v12, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v14, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 154
    .local v1, MinusLayout:Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 157
    .end local v1           #MinusLayout:Landroid/widget/LinearLayout;
    :cond_85
    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetSmsMsg()Ljava/lang/String;

    move-result-object v5

    .line 158
    .local v5, msg:Ljava/lang/String;
    if-eqz v5, :cond_95

    if-eqz v5, :cond_97

    const-string v11, "Keep this message."

    invoke-virtual {v5, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_97

    .line 159
    :cond_95
    const-string v5, ""

    .line 161
    :cond_97
    const v11, 0x7f08009e

    invoke-virtual {p0, v11}, Lcom/android/settings/fmm/RecipientsPlusView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    iput-object v11, p0, Lcom/android/settings/fmm/RecipientsPlusView;->SMSMessage:Landroid/widget/EditText;

    .line 162
    iget-object v11, p0, Lcom/android/settings/fmm/RecipientsPlusView;->SMSMessage:Landroid/widget/EditText;

    invoke-virtual {v11, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 163
    return-void

    .line 102
    .end local v5           #msg:Ljava/lang/String;
    .end local v7           #rec2:Ljava/lang/String;
    .end local v8           #rec3:Ljava/lang/String;
    .end local v9           #rec4:Ljava/lang/String;
    .end local v10           #rec5:Ljava/lang/String;
    :cond_a8
    iget-object v11, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mInflater:Landroid/view/LayoutInflater;

    iget-object v12, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v14, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 103
    .restart local v1       #MinusLayout:Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 104
    iget-object v11, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .local v4, index:I
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fmm/RecipientsMinusView;

    .line 105
    .local v0, ChildView:Lcom/android/settings/fmm/RecipientsMinusView;
    invoke-virtual {v0, v6}, Lcom/android/settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto/16 :goto_1e

    .line 113
    .end local v0           #ChildView:Lcom/android/settings/fmm/RecipientsMinusView;
    .end local v1           #MinusLayout:Landroid/widget/LinearLayout;
    .restart local v7       #rec2:Ljava/lang/String;
    :cond_c7
    iget-object v11, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mInflater:Landroid/view/LayoutInflater;

    iget-object v12, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v14, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 114
    .restart local v1       #MinusLayout:Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 115
    iget-object v11, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fmm/RecipientsMinusView;

    .line 116
    .restart local v0       #ChildView:Lcom/android/settings/fmm/RecipientsMinusView;
    invoke-virtual {v0, v7}, Lcom/android/settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto/16 :goto_32

    .line 124
    .end local v0           #ChildView:Lcom/android/settings/fmm/RecipientsMinusView;
    .end local v1           #MinusLayout:Landroid/widget/LinearLayout;
    .restart local v8       #rec3:Ljava/lang/String;
    :cond_e6
    iget-object v11, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mInflater:Landroid/view/LayoutInflater;

    iget-object v12, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v14, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 125
    .restart local v1       #MinusLayout:Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 126
    iget-object v11, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fmm/RecipientsMinusView;

    .line 127
    .restart local v0       #ChildView:Lcom/android/settings/fmm/RecipientsMinusView;
    invoke-virtual {v0, v8}, Lcom/android/settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto/16 :goto_46

    .line 135
    .end local v0           #ChildView:Lcom/android/settings/fmm/RecipientsMinusView;
    .end local v1           #MinusLayout:Landroid/widget/LinearLayout;
    .restart local v9       #rec4:Ljava/lang/String;
    :cond_105
    iget-object v11, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mInflater:Landroid/view/LayoutInflater;

    iget-object v12, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v14, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 136
    .restart local v1       #MinusLayout:Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 137
    iget-object v11, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fmm/RecipientsMinusView;

    .line 138
    .restart local v0       #ChildView:Lcom/android/settings/fmm/RecipientsMinusView;
    invoke-virtual {v0, v9}, Lcom/android/settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto/16 :goto_5a

    .line 146
    .end local v0           #ChildView:Lcom/android/settings/fmm/RecipientsMinusView;
    .end local v1           #MinusLayout:Landroid/widget/LinearLayout;
    .restart local v10       #rec5:Ljava/lang/String;
    :cond_124
    iget-object v11, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mInflater:Landroid/view/LayoutInflater;

    iget-object v12, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v14, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 147
    .restart local v1       #MinusLayout:Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 148
    iget-object v11, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fmm/RecipientsMinusView;

    .line 149
    .restart local v0       #ChildView:Lcom/android/settings/fmm/RecipientsMinusView;
    invoke-virtual {v0, v10}, Lcom/android/settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto/16 :goto_6e
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 60
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/fmm/RecipientsPlusView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mInflater:Landroid/view/LayoutInflater;

    .line 64
    const v1, 0x7f08009c

    invoke-virtual {p0, v1}, Lcom/android/settings/fmm/RecipientsPlusView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    .line 67
    iget-object v1, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 69
    const v1, 0x7f08009b

    invoke-virtual {p0, v1}, Lcom/android/settings/fmm/RecipientsPlusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 70
    .local v0, PlusButton:Landroid/widget/ImageView;
    new-instance v1, Lcom/android/settings/fmm/RecipientsPlusView$1;

    invoke-direct {v1, p0}, Lcom/android/settings/fmm/RecipientsPlusView$1;-><init>(Lcom/android/settings/fmm/RecipientsPlusView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/fmm/RecipientsPlusView;->init()V

    .line 91
    return-void
.end method
