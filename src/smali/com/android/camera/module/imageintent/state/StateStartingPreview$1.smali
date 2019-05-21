.class final Lcom/android/camera/module/imageintent/state/StateStartingPreview$1;
.super Ljava/lang/Object;
.source "StateStartingPreview.java"

# interfaces
.implements Lcom/android/camera/burst/BurstA11yButtonController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/imageintent/state/StateStartingPreview;
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
.field private synthetic this$0:Lcom/android/camera/module/imageintent/state/StateStartingPreview;


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/state/StateStartingPreview;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/camera/module/imageintent/state/StateStartingPreview$1;->this$0:Lcom/android/camera/module/imageintent/state/StateStartingPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic processEvent(Ljava/lang/Object;)Lcom/android/camera/fsm/State;
    .locals 3

    .prologue
    .line 46
    .line 1049
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateBackgroundWithSurfaceTexture;

    iget-object v1, p0, Lcom/android/camera/module/imageintent/state/StateStartingPreview$1;->this$0:Lcom/android/camera/module/imageintent/state/StateStartingPreview;

    iget-object v2, p0, Lcom/android/camera/module/imageintent/state/StateStartingPreview$1;->this$0:Lcom/android/camera/module/imageintent/state/StateStartingPreview;

    .line 1050
    invoke-static {v2}, Lcom/android/camera/module/imageintent/state/StateStartingPreview;->access$000(Lcom/android/camera/module/imageintent/state/StateStartingPreview;)Lcom/google/android/apps/camera/async/RefCountBase;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/module/imageintent/state/StateBackgroundWithSurfaceTexture;-><init>(Lcom/android/camera/module/imageintent/state/ImageIntentState;Lcom/google/android/apps/camera/async/RefCountBase;)V

    .line 46
    return-object v0
.end method
