.class final Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl$1;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl$1;->this$0:Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic update(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 69
    .line 1072
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl$1;->this$0:Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl;->access$000(Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl;)V

    .line 69
    return-void
.end method
