.class final Lcom/android/camera/module/imageintent/state/StateReviewingPicture$4;
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
    .line 99
    iput-object p1, p0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture$4;->this$0:Lcom/android/camera/module/imageintent/state/StateReviewingPicture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic processEvent(Ljava/lang/Object;)Lcom/android/camera/fsm/State;
    .locals 3

    .prologue
    .line 99
    .line 1102
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateIntentCompleted;

    iget-object v1, p0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture$4;->this$0:Lcom/android/camera/module/imageintent/state/StateReviewingPicture;

    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/module/imageintent/state/StateIntentCompleted;-><init>(Lcom/android/camera/module/imageintent/state/ImageIntentState;Lcom/google/common/base/Optional;)V

    .line 99
    return-object v0
.end method
