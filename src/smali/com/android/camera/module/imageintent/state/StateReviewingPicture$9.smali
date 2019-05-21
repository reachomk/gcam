.class final Lcom/android/camera/module/imageintent/state/StateReviewingPicture$9;
.super Ljava/lang/Object;
.source "StateReviewingPicture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/imageintent/state/StateReviewingPicture;->showPicture(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/imageintent/state/StateReviewingPicture;


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/state/StateReviewingPicture;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture$9;->this$0:Lcom/android/camera/module/imageintent/state/StateReviewingPicture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture$9;->this$0:Lcom/android/camera/module/imageintent/state/StateReviewingPicture;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;->access$900(Lcom/android/camera/module/imageintent/state/StateReviewingPicture;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getModuleUI()Lcom/android/camera/module/imageintent/ImageIntentModuleUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture$9;->this$0:Lcom/android/camera/module/imageintent/state/StateReviewingPicture;

    invoke-static {v1}, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;->access$800(Lcom/android/camera/module/imageintent/state/StateReviewingPicture;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->showPictureReviewUI(Landroid/graphics/Bitmap;)V

    .line 223
    return-void
.end method
