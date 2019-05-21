.class final Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl$2;
.super Ljava/lang/Object;
.source "TouchToFocusImpl.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl;-><init>(Lcom/google/android/apps/camera/async/Lifetime;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/google/android/gms/internal/zzxg$zza;Ljavax/inject/Provider;Lcom/android/camera/one/v2/command/CameraCommandExecutor;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;Lcom/google/android/apps/camera/async/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Updatable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$afResetExecutor:Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl$2;->val$afResetExecutor:Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic update(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 76
    check-cast p1, Ljava/lang/Boolean;

    .line 1079
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl$2;->val$afResetExecutor:Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;->reset()V

    .line 76
    :cond_0
    return-void
.end method
