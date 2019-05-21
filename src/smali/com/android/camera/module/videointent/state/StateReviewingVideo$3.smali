.class final Lcom/android/camera/module/videointent/state/StateReviewingVideo$3;
.super Ljava/lang/Object;
.source "StateReviewingVideo.java"

# interfaces
.implements Lcom/android/camera/burst/BurstA11yButtonController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/videointent/state/StateReviewingVideo;
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
.field private synthetic this$0:Lcom/android/camera/module/videointent/state/StateReviewingVideo;


# direct methods
.method constructor <init>(Lcom/android/camera/module/videointent/state/StateReviewingVideo;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/camera/module/videointent/state/StateReviewingVideo$3;->this$0:Lcom/android/camera/module/videointent/state/StateReviewingVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic processEvent(Ljava/lang/Object;)Lcom/android/camera/fsm/State;
    .locals 1

    .prologue
    .line 72
    .line 1075
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReviewingVideo$3;->this$0:Lcom/android/camera/module/videointent/state/StateReviewingVideo;

    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->access$100(Lcom/android/camera/module/videointent/state/StateReviewingVideo;)V

    .line 1076
    const/4 v0, 0x0

    .line 72
    return-object v0
.end method
