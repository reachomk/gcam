.class final Lcom/android/camera/module/imageintent/state/StateReviewingPicture$6$1;
.super Ljava/lang/Object;
.source "StateReviewingPicture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/imageintent/state/StateReviewingPicture$6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/module/imageintent/state/StateReviewingPicture$6;


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/state/StateReviewingPicture$6;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture$6$1;->this$1:Lcom/android/camera/module/imageintent/state/StateReviewingPicture$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture$6$1;->this$1:Lcom/android/camera/module/imageintent/state/StateReviewingPicture$6;

    iget-object v0, v0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture$6;->this$0:Lcom/android/camera/module/imageintent/state/StateReviewingPicture;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;->access$300(Lcom/android/camera/module/imageintent/state/StateReviewingPicture;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getImageIntentStatechart()Lcom/android/camera/ui/controller/ImageIntentStatechart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->onRetakeRequested()V

    .line 137
    return-void
.end method
