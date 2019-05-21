.class final Lcom/android/camera/module/imageintent/state/StateBackground$2;
.super Ljava/lang/Object;
.source "StateBackground.java"

# interfaces
.implements Lcom/android/camera/burst/BurstA11yButtonController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/imageintent/state/StateBackground;->registerEventHandlers()V
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
.field private synthetic this$0:Lcom/android/camera/module/imageintent/state/StateBackground;


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/state/StateBackground;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/camera/module/imageintent/state/StateBackground$2;->this$0:Lcom/android/camera/module/imageintent/state/StateBackground;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic processEvent(Ljava/lang/Object;)Lcom/android/camera/fsm/State;
    .locals 3

    .prologue
    .line 37
    check-cast p1, Lcom/android/camera/module/imageintent/event/EventOnSurfaceTextureAvailable;

    .line 1040
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateBackground$2;->this$0:Lcom/android/camera/module/imageintent/state/StateBackground;

    .line 1041
    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateBackground;->access$000(Lcom/android/camera/module/imageintent/state/StateBackground;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    .line 1042
    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getResourceSurfaceTextureFactory()Lcom/android/camera/module/ResourceSurfaceTextureFactory;

    move-result-object v0

    .line 1043
    invoke-virtual {p1}, Lcom/android/camera/module/imageintent/event/EventOnSurfaceTextureAvailable;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/ResourceSurfaceTextureFactory;->create(Landroid/graphics/SurfaceTexture;)Lcom/google/android/apps/camera/async/RefCountBase;

    move-result-object v0

    .line 1044
    new-instance v1, Lcom/android/camera/module/imageintent/state/StateBackgroundWithSurfaceTexture;

    iget-object v2, p0, Lcom/android/camera/module/imageintent/state/StateBackground$2;->this$0:Lcom/android/camera/module/imageintent/state/StateBackground;

    invoke-direct {v1, v2, v0}, Lcom/android/camera/module/imageintent/state/StateBackgroundWithSurfaceTexture;-><init>(Lcom/android/camera/module/imageintent/state/ImageIntentState;Lcom/google/android/apps/camera/async/RefCountBase;)V

    .line 1049
    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->close()V

    .line 37
    return-object v1
.end method
