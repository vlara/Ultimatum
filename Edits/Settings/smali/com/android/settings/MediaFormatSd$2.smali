.class Lcom/android/settings/MediaFormatSd$2;
.super Ljava/lang/Object;
.source "MediaFormatSd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MediaFormatSd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MediaFormatSd;


# direct methods
.method constructor <init>(Lcom/android/settings/MediaFormatSd;)V
    .registers 2
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/settings/MediaFormatSd$2;->this$0:Lcom/android/settings/MediaFormatSd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings/MediaFormatSd$2;->this$0:Lcom/android/settings/MediaFormatSd;

    const/16 v1, 0x37

    #calls: Lcom/android/settings/MediaFormatSd;->runKeyguardConfirmation(I)Z
    invoke-static {v0, v1}, Lcom/android/settings/MediaFormatSd;->access$000(Lcom/android/settings/MediaFormatSd;I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 108
    iget-object v0, p0, Lcom/android/settings/MediaFormatSd$2;->this$0:Lcom/android/settings/MediaFormatSd;

    #calls: Lcom/android/settings/MediaFormatSd;->establishFinalConfirmationState()V
    invoke-static {v0}, Lcom/android/settings/MediaFormatSd;->access$100(Lcom/android/settings/MediaFormatSd;)V

    .line 110
    :cond_f
    return-void
.end method