.class final Lcom/android/camera/module/videointent/state/StateStartingPreview$1;
.super Ljava/lang/Object;
.source "StateStartingPreview.java"

# interfaces
.implements Lcom/android/camera/burst/BurstA11yButtonController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/videointent/state/StateStartingPreview;
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
.field private synthetic this$0:Lcom/android/camera/module/videointent/state/StateStartingPreview;


# direct methods
.method constructor <init>(Lcom/android/camera/module/videointent/state/StateStartingPreview;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/camera/module/videointent/state/StateStartingPreview$1;->this$0:Lcom/android/camera/module/videointent/state/StateStartingPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic processEvent(Ljava/lang/Object;)Lcom/android/camera/fsm/State;
    .locals 3

    .prologue
    .line 94
    .line 1097
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateStartingPreview$1;->this$0:Lcom/android/camera/module/videointent/state/StateStartingPreview;

    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateStartingPreview;->access$000(Lcom/android/camera/module/videointent/state/StateStartingPreview;)Lcom/android/camera/camcorder/CamcorderDevice;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/camcorder/CamcorderDevice;->close()V

    .line 1098
    new-instance v0, Lcom/android/camera/module/videointent/state/StateBackgroundWithSurfaceTexture;

    iget-object v1, p0, Lcom/android/camera/module/videointent/state/StateStartingPreview$1;->this$0:Lcom/android/camera/module/videointent/state/StateStartingPreview;

    iget-object v2, p0, Lcom/android/camera/module/videointent/state/StateStartingPreview$1;->this$0:Lcom/android/camera/module/videointent/state/StateStartingPreview;

    .line 1099
    invoke-static {v2}, Lcom/android/camera/module/videointent/state/StateStartingPreview;->access$100(Lcom/android/camera/module/videointent/state/StateStartingPreview;)Lcom/google/android/apps/camera/async/RefCountBase;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/module/videointent/state/StateBackgroundWithSurfaceTexture;-><init>(Lcom/android/camera/module/videointent/state/VideoIntentState;Lcom/google/android/apps/camera/async/RefCountBase;)V

    .line 94
    return-object v0
.end method
