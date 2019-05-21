.class final Lcom/android/camera/one/v2/config/Nexus2015CppMemoryHack$1;
.super Lcom/android/camera/one/v2/core/ResponseListener;
.source "Nexus2015CppMemoryHack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/config/Nexus2015CppMemoryHack;->provideCaptureResultVerifier(Lcom/android/camera/debug/Logger$Factory;)Lcom/android/camera/one/v2/common/RequestTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$acceptableEdge:Ljava/util/Set;

.field private synthetic val$acceptableNR:Ljava/util/Set;

.field private synthetic val$log:Lcom/android/camera/debug/Logger;


# direct methods
.method constructor <init>(Ljava/util/Set;Ljava/util/Set;Lcom/android/camera/debug/Logger;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/camera/one/v2/config/Nexus2015CppMemoryHack$1;->val$acceptableNR:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/camera/one/v2/config/Nexus2015CppMemoryHack$1;->val$acceptableEdge:Ljava/util/Set;

    iput-object p3, p0, Lcom/android/camera/one/v2/config/Nexus2015CppMemoryHack$1;->val$log:Lcom/android/camera/debug/Logger;

    invoke-direct {p0}, Lcom/android/camera/one/v2/core/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)V
    .locals 4

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/camera/one/v2/config/Nexus2015CppMemoryHack$1;->val$acceptableNR:Ljava/util/Set;

    .line 69
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->getRequest()Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v1, v2}, Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    .line 68
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 67
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 70
    iget-object v0, p0, Lcom/android/camera/one/v2/config/Nexus2015CppMemoryHack$1;->val$acceptableEdge:Ljava/util/Set;

    .line 71
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->getRequest()Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v1, v2}, Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 70
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 74
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 75
    iget-object v1, p0, Lcom/android/camera/one/v2/config/Nexus2015CppMemoryHack$1;->val$acceptableNR:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/android/camera/one/v2/config/Nexus2015CppMemoryHack$1;->val$log:Lcom/android/camera/debug/Logger;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x36

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Capture result did not contain an acceptable NR mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/debug/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->EDGE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 82
    iget-object v1, p0, Lcom/android/camera/one/v2/config/Nexus2015CppMemoryHack$1;->val$acceptableEdge:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/android/camera/one/v2/config/Nexus2015CppMemoryHack$1;->val$log:Lcom/android/camera/debug/Logger;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x38

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Capture result did not contain an acceptable Edge mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/debug/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    :cond_1
    return-void
.end method
