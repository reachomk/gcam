.class public final Lcom/android/camera/one/v2/imagemanagement/imagedistributor/RefCountedImageProxy;
.super Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;
.source "RefCountedImageProxy.java"


# instance fields
.field private final refCount:Lcom/google/android/apps/camera/async/RefCountBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/RefCountBase",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;I)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V

    .line 24
    new-instance v0, Lcom/google/android/apps/camera/async/RefCountBase;

    invoke-direct {v0, p1, p2}, Lcom/google/android/apps/camera/async/RefCountBase;-><init>(Lcom/google/android/apps/camera/async/SafeCloseable;I)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/RefCountedImageProxy;->refCount:Lcom/google/android/apps/camera/async/RefCountBase;

    .line 25
    return-void
.end method


# virtual methods
.method public final addRef()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/RefCountedImageProxy;->refCount:Lcom/google/android/apps/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->addRef()V

    .line 42
    return-void
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/RefCountedImageProxy;->refCount:Lcom/google/android/apps/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->close()V

    .line 30
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 34
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "refCount"

    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/RefCountedImageProxy;->refCount:Lcom/google/android/apps/camera/async/RefCountBase;

    .line 35
    invoke-virtual {v2}, Lcom/google/android/apps/camera/async/RefCountBase;->getRefCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 36
    invoke-super {p0}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/Objects$ToStringHelper;->addValue(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    return-object v0
.end method
