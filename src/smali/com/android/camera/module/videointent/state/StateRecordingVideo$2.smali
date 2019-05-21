.class final Lcom/android/camera/module/videointent/state/StateRecordingVideo$2;
.super Ljava/lang/Object;
.source "StateRecordingVideo.java"

# interfaces
.implements Lcom/android/camera/burst/BurstA11yButtonController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/videointent/state/StateRecordingVideo;
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
.field private synthetic this$0:Lcom/android/camera/module/videointent/state/StateRecordingVideo;


# direct methods
.method constructor <init>(Lcom/android/camera/module/videointent/state/StateRecordingVideo;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/camera/module/videointent/state/StateRecordingVideo$2;->this$0:Lcom/android/camera/module/videointent/state/StateRecordingVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic processEvent(Ljava/lang/Object;)Lcom/android/camera/fsm/State;
    .locals 1

    .prologue
    .line 100
    .line 1103
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateRecordingVideo$2;->this$0:Lcom/android/camera/module/videointent/state/StateRecordingVideo;

    .line 1104
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateRecordingVideo$2;->this$0:Lcom/android/camera/module/videointent/state/StateRecordingVideo;

    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateRecordingVideo;->access$400(Lcom/android/camera/module/videointent/state/StateRecordingVideo;)Lcom/android/camera/module/videointent/state/VideoIntentState;

    move-result-object v0

    .line 100
    return-object v0
.end method
