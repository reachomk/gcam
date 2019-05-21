.class final Lcom/android/camera/module/videointent/state/StateStartingPreview$4;
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
    .line 159
    iput-object p1, p0, Lcom/android/camera/module/videointent/state/StateStartingPreview$4;->this$0:Lcom/android/camera/module/videointent/state/StateStartingPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic processEvent(Ljava/lang/Object;)Lcom/android/camera/fsm/State;
    .locals 2

    .prologue
    .line 159
    .line 1162
    invoke-static {}, Lcom/android/camera/module/videointent/state/StateStartingPreview;->access$1300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "processOnPreviewSetupFailed"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    new-instance v0, Lcom/android/camera/module/videointent/state/StateFatal;

    iget-object v1, p0, Lcom/android/camera/module/videointent/state/StateStartingPreview$4;->this$0:Lcom/android/camera/module/videointent/state/StateStartingPreview;

    invoke-direct {v0, v1}, Lcom/android/camera/module/videointent/state/StateFatal;-><init>(Lcom/android/camera/module/videointent/state/VideoIntentState;)V

    .line 159
    return-object v0
.end method
