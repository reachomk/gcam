.class final Lcom/android/camera/module/videointent/VideoIntentModule$5;
.super Ljava/lang/Object;
.source "VideoIntentModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/videointent/VideoIntentModule;->onMediaStorageFull(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/videointent/VideoIntentModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/videointent/VideoIntentModule;)V
    .locals 0

    .prologue
    .line 527
    iput-object p1, p0, Lcom/android/camera/module/videointent/VideoIntentModule$5;->this$0:Lcom/android/camera/module/videointent/VideoIntentModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule$5;->this$0:Lcom/android/camera/module/videointent/VideoIntentModule;

    invoke-static {v0}, Lcom/android/camera/module/videointent/VideoIntentModule;->access$300(Lcom/android/camera/module/videointent/VideoIntentModule;)Landroid/app/AlertDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule$5;->this$0:Lcom/android/camera/module/videointent/VideoIntentModule;

    iget-object v1, p0, Lcom/android/camera/module/videointent/VideoIntentModule$5;->this$0:Lcom/android/camera/module/videointent/VideoIntentModule;

    .line 532
    invoke-static {v1}, Lcom/android/camera/module/videointent/VideoIntentModule;->access$500(Lcom/android/camera/module/videointent/VideoIntentModule;)Lcom/android/camera/storage/StorageDialogBuilder;

    move-result-object v1

    new-instance v2, Lcom/android/camera/module/videointent/VideoIntentModule$5$1;

    invoke-direct {v2, p0}, Lcom/android/camera/module/videointent/VideoIntentModule$5$1;-><init>(Lcom/android/camera/module/videointent/VideoIntentModule$5;)V

    invoke-interface {v1, v2}, Lcom/android/camera/storage/StorageDialogBuilder;->buildVideoPreviewDialog(Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v1

    .line 531
    invoke-static {v0, v1}, Lcom/android/camera/module/videointent/VideoIntentModule;->access$302(Lcom/android/camera/module/videointent/VideoIntentModule;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 541
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule$5;->this$0:Lcom/android/camera/module/videointent/VideoIntentModule;

    invoke-static {v0}, Lcom/android/camera/module/videointent/VideoIntentModule;->access$300(Lcom/android/camera/module/videointent/VideoIntentModule;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 542
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModule$5;->this$0:Lcom/android/camera/module/videointent/VideoIntentModule;

    invoke-static {v0}, Lcom/android/camera/module/videointent/VideoIntentModule;->access$300(Lcom/android/camera/module/videointent/VideoIntentModule;)Landroid/app/AlertDialog;

    move-result-object v0

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 543
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 545
    :cond_0
    return-void
.end method
