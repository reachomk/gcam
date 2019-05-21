.class final Lcom/android/camera/module/videointent/VideoIntentModule$5$1;
.super Ljava/lang/Object;
.source "VideoIntentModule.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/videointent/VideoIntentModule$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/module/videointent/VideoIntentModule$5;


# direct methods
.method constructor <init>(Lcom/android/camera/module/videointent/VideoIntentModule$5;)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Lcom/android/camera/module/videointent/VideoIntentModule$5$1;->this$1:Lcom/android/camera/module/videointent/VideoIntentModule$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule$5$1;->this$1:Lcom/android/camera/module/videointent/VideoIntentModule$5;

    iget-object v0, v0, Lcom/android/camera/module/videointent/VideoIntentModule$5;->this$0:Lcom/android/camera/module/videointent/VideoIntentModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/module/videointent/VideoIntentModule;->access$302(Lcom/android/camera/module/videointent/VideoIntentModule;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 537
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 538
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule$5$1;->this$1:Lcom/android/camera/module/videointent/VideoIntentModule$5;

    iget-object v0, v0, Lcom/android/camera/module/videointent/VideoIntentModule$5;->this$0:Lcom/android/camera/module/videointent/VideoIntentModule;

    invoke-static {v0}, Lcom/android/camera/module/videointent/VideoIntentModule;->access$400$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUTJ9CHIMUQBEEHIMST1FAPKM8PBF95N78PBEEH6MUP3LDHIJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BR1E1O2UGR1DLIN4OA1CDQ6ITJ9EHSK6RREEHP6UR3CCLP3M___(Lcom/android/camera/module/videointent/VideoIntentModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    const-string v1, "Storage full"

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->finishActivityWithReason(Ljava/lang/String;)V

    .line 539
    return-void
.end method
