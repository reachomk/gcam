.class final Lcom/android/camera/module/videointent/state/StateForeground$2;
.super Ljava/lang/Object;
.source "StateForeground.java"

# interfaces
.implements Lcom/android/camera/burst/BurstA11yButtonController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/videointent/state/StateForeground;
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
.field private synthetic this$0:Lcom/android/camera/module/videointent/state/StateForeground;


# direct methods
.method constructor <init>(Lcom/android/camera/module/videointent/state/StateForeground;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/camera/module/videointent/state/StateForeground$2;->this$0:Lcom/android/camera/module/videointent/state/StateForeground;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic processEvent(Ljava/lang/Object;)Lcom/android/camera/fsm/State;
    .locals 3

    .prologue
    .line 34
    check-cast p1, Lcom/android/camera/module/imageintent/event/EventOnSurfaceTextureAvailable;

    .line 1037
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateForeground$2;->this$0:Lcom/android/camera/module/videointent/state/StateForeground;

    .line 1038
    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateForeground;->access$000(Lcom/android/camera/module/videointent/state/StateForeground;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    .line 1039
    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getResourceSurfaceTextureFactory()Lcom/android/camera/module/ResourceSurfaceTextureFactory;

    move-result-object v0

    .line 1040
    invoke-virtual {p1}, Lcom/android/camera/module/imageintent/event/EventOnSurfaceTextureAvailable;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/ResourceSurfaceTextureFactory;->create(Landroid/graphics/SurfaceTexture;)Lcom/google/android/apps/camera/async/RefCountBase;

    move-result-object v0

    .line 1041
    new-instance v1, Lcom/android/camera/module/videointent/state/StateForegroundWithSurfaceTexture;

    iget-object v2, p0, Lcom/android/camera/module/videointent/state/StateForeground$2;->this$0:Lcom/android/camera/module/videointent/state/StateForeground;

    invoke-direct {v1, v2, v0}, Lcom/android/camera/module/videointent/state/StateForegroundWithSurfaceTexture;-><init>(Lcom/android/camera/module/videointent/state/VideoIntentState;Lcom/google/android/apps/camera/async/RefCountBase;)V

    .line 1046
    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->close()V

    .line 34
    return-object v1
.end method