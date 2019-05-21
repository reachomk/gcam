.class final Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig$DeferredOutputConfig;
.super Ljava/lang/Object;
.source "AsyncStreamConfig.java"

# interfaces
.implements Lcom/google/android/apps/camera/proxy/camera2/OutputConfigurationProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DeferredOutputConfig"
.end annotation


# instance fields
.field private final outputConfiguration:Lcom/google/android/apps/camera/proxy/camera2/AndroidObjectHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/proxy/camera2/AndroidObjectHandle",
            "<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/hardware/camera2/params/OutputConfiguration;)V
    .locals 1

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Lcom/google/android/apps/camera/proxy/camera2/AndroidObjectHandle;

    invoke-direct {v0, p1}, Lcom/google/android/apps/camera/proxy/camera2/AndroidObjectHandle;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig$DeferredOutputConfig;->outputConfiguration:Lcom/google/android/apps/camera/proxy/camera2/AndroidObjectHandle;

    .line 151
    return-void
.end method


# virtual methods
.method public final getAndroidOutputConfiguration()Lcom/google/android/apps/camera/proxy/camera2/AndroidObjectHandle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/proxy/camera2/AndroidObjectHandle",
            "<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig$DeferredOutputConfig;->outputConfiguration:Lcom/google/android/apps/camera/proxy/camera2/AndroidObjectHandle;

    return-object v0
.end method

.method public final getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig$DeferredOutputConfig;->outputConfiguration:Lcom/google/android/apps/camera/proxy/camera2/AndroidObjectHandle;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/proxy/camera2/AndroidObjectHandle;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public final setDeferredSurface(Landroid/view/Surface;)V
    .locals 1

    .prologue
    .line 160
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-virtual {p0}, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig$DeferredOutputConfig;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 162
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig$DeferredOutputConfig;->outputConfiguration:Lcom/google/android/apps/camera/proxy/camera2/AndroidObjectHandle;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/proxy/camera2/AndroidObjectHandle;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-static {v0, p1}, Lcom/google/android/camera/support/v23/experimental/Experimental;->setDeferredSurface(Landroid/hardware/camera2/params/OutputConfiguration;Landroid/view/Surface;)V

    .line 163
    return-void

    .line 161
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 177
    const-string v0, "DeferredOutputConfig"

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->toStringHelper(Ljava/lang/String;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "outputConfiguration"

    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig$DeferredOutputConfig;->outputConfiguration:Lcom/google/android/apps/camera/proxy/camera2/AndroidObjectHandle;

    .line 178
    invoke-virtual {v2}, Lcom/google/android/apps/camera/proxy/camera2/AndroidObjectHandle;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    return-object v0
.end method
