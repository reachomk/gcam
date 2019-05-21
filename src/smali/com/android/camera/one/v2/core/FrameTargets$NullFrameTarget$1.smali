.class final Lcom/android/camera/one/v2/core/FrameTargets$NullFrameTarget$1;
.super Ljava/lang/Object;
.source "FrameTargets.java"

# interfaces
.implements Lcom/android/camera/one/v2/core/FrameTarget$PreparedFrameHandle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/core/FrameTargets$NullFrameTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final abort()V
    .locals 0

    .prologue
    .line 22
    return-void
.end method

.method public final getResponseListener()Lcom/android/camera/one/v2/core/ResponseListener;
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/android/camera/one/v2/core/FrameServerModule;->noop()Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v0

    return-object v0
.end method

.method public final getSurfaces()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
