.class Lcom/android/settings/motion/PanSensitivityPreference$1;
.super Ljava/lang/Object;
.source "PanSensitivityPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/PanSensitivityPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion/PanSensitivityPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/motion/PanSensitivityPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/settings/motion/PanSensitivityPreference$1;->this$0:Lcom/android/settings/motion/PanSensitivityPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "witch"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/motion/PanSensitivityPreference$1;->this$0:Lcom/android/settings/motion/PanSensitivityPreference;

    const/4 v1, -0x3

    #setter for: Lcom/android/settings/motion/PanSensitivityPreference;->mWhichButtonClicked:I
    invoke-static {v0, v1}, Lcom/android/settings/motion/PanSensitivityPreference;->access$002(Lcom/android/settings/motion/PanSensitivityPreference;I)I

    .line 49
    iget-object v0, p0, Lcom/android/settings/motion/PanSensitivityPreference$1;->this$0:Lcom/android/settings/motion/PanSensitivityPreference;

    #getter for: Lcom/android/settings/motion/PanSensitivityPreference;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/android/settings/motion/PanSensitivityPreference;->access$100(Lcom/android/settings/motion/PanSensitivityPreference;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/motion/PanSettings;->startSensitivityTest(I)V

    .line 50
    return-void
.end method
