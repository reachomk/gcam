.class final Lcom/android/camera/module/imageintent/state/StateReviewingPicture$5;
.super Ljava/lang/Object;
.source "StateReviewingPicture.java"

# interfaces
.implements Lcom/android/camera/burst/BurstA11yButtonController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/imageintent/state/StateReviewingPicture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/burst/BurstA11yButtonController$Listener;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/imageintent/state/StateReviewingPicture;


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/state/StateReviewingPicture;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture$5;->this$0:Lcom/android/camera/module/imageintent/state/StateReviewingPicture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic processEvent(Ljava/lang/Object;)Lcom/android/camera/fsm/State;
    .locals 3

    .prologue
    .line 109
    .line 1113
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture$5;->this$0:Lcom/android/camera/module/imageintent/state/StateReviewingPicture;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;->access$100(Lcom/android/camera/module/imageintent/state/StateReviewingPicture;)Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture$5;->this$0:Lcom/android/camera/module/imageintent/state/StateReviewingPicture;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;->access$202(Lcom/android/camera/module/imageintent/state/StateReviewingPicture;Z)Z

    .line 1115
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1119
    :cond_0
    new-instance v1, Lcom/android/camera/module/imageintent/state/StateSavingPicture;

    iget-object v2, p0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture$5;->this$0:Lcom/android/camera/module/imageintent/state/StateReviewingPicture;

    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture$5;->this$0:Lcom/android/camera/module/imageintent/state/StateReviewingPicture;

    .line 1120
    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;->access$100(Lcom/android/camera/module/imageintent/state/StateReviewingPicture;)Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v2, v0}, Lcom/android/camera/module/imageintent/state/StateSavingPicture;-><init>(Lcom/android/camera/module/imageintent/state/ImageIntentState;[B)V

    move-object v0, v1

    .line 109
    goto :goto_0
.end method
