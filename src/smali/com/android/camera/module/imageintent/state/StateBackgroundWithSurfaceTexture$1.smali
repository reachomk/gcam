.class final Lcom/android/camera/module/imageintent/state/StateBackgroundWithSurfaceTexture$1;
.super Ljava/lang/Object;
.source "StateBackgroundWithSurfaceTexture.java"

# interfaces
.implements Lcom/android/camera/burst/BurstA11yButtonController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/imageintent/state/StateBackgroundWithSurfaceTexture;
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
.field private synthetic this$0:Lcom/android/camera/module/imageintent/state/StateBackgroundWithSurfaceTexture;


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/state/StateBackgroundWithSurfaceTexture;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/camera/module/imageintent/state/StateBackgroundWithSurfaceTexture$1;->this$0:Lcom/android/camera/module/imageintent/state/StateBackgroundWithSurfaceTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic processEvent(Ljava/lang/Object;)Lcom/android/camera/fsm/State;
    .locals 3

    .prologue
    .line 30
    .line 1033
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateForegroundWithSurfaceTexture;

    iget-object v1, p0, Lcom/android/camera/module/imageintent/state/StateBackgroundWithSurfaceTexture$1;->this$0:Lcom/android/camera/module/imageintent/state/StateBackgroundWithSurfaceTexture;

    iget-object v2, p0, Lcom/android/camera/module/imageintent/state/StateBackgroundWithSurfaceTexture$1;->this$0:Lcom/android/camera/module/imageintent/state/StateBackgroundWithSurfaceTexture;

    .line 1034
    invoke-static {v2}, Lcom/android/camera/module/imageintent/state/StateBackgroundWithSurfaceTexture;->access$000(Lcom/android/camera/module/imageintent/state/StateBackgroundWithSurfaceTexture;)Lcom/google/android/apps/camera/async/RefCountBase;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/module/imageintent/state/StateForegroundWithSurfaceTexture;-><init>(Lcom/android/camera/module/imageintent/state/ImageIntentState;Lcom/google/android/apps/camera/async/RefCountBase;)V

    .line 30
    return-object v0
.end method
