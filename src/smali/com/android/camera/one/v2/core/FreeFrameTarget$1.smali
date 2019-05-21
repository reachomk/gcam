.class final Lcom/android/camera/one/v2/core/FreeFrameTarget$1;
.super Ljava/lang/Object;
.source "FreeFrameTarget.java"

# interfaces
.implements Lcom/android/camera/one/v2/core/FrameTarget$PreparedFrameHandle;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/core/FreeFrameTarget;-><init>(Ljava/util/Set;Lcom/android/camera/one/v2/core/ResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$finalSurfaces:Ljava/util/Set;

.field private synthetic val$responseListener:Lcom/android/camera/one/v2/core/ResponseListener;


# direct methods
.method constructor <init>(Ljava/util/Set;Lcom/android/camera/one/v2/core/ResponseListener;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/camera/one/v2/core/FreeFrameTarget$1;->val$finalSurfaces:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/camera/one/v2/core/FreeFrameTarget$1;->val$responseListener:Lcom/android/camera/one/v2/core/ResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final abort()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

.method public final getResponseListener()Lcom/android/camera/one/v2/core/ResponseListener;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/one/v2/core/FreeFrameTarget$1;->val$responseListener:Lcom/android/camera/one/v2/core/ResponseListener;

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
    .line 30
    iget-object v0, p0, Lcom/android/camera/one/v2/core/FreeFrameTarget$1;->val$finalSurfaces:Ljava/util/Set;

    return-object v0
.end method
