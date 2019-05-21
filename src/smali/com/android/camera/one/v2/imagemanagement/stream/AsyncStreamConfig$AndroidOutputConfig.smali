.class final Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig$AndroidOutputConfig;
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
    name = "AndroidOutputConfig"
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

.field private final surface:Landroid/view/Surface;


# direct methods
.method constructor <init>(ILandroid/view/Surface;)V
    .locals 2

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p2, p0, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig$AndroidOutputConfig;->surface:Landroid/view/Surface;

    .line 191
    new-instance v0, Lcom/google/android/apps/camera/proxy/camera2/AndroidObjectHandle;

    new-instance v1, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v1, p1, p2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;)V

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/proxy/camera2/AndroidObjectHandle;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig$AndroidOutputConfig;->outputConfiguration:Lcom/google/android/apps/camera/proxy/camera2/AndroidObjectHandle;

    .line 193
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
    .line 211
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig$AndroidOutputConfig;->outputConfiguration:Lcom/google/android/apps/camera/proxy/camera2/AndroidObjectHandle;

    return-object v0
.end method

.method public final getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig$AndroidOutputConfig;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 216
    const-string v0, "AndroidOutputConfig"

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->toStringHelper(Ljava/lang/String;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "outputConfiguration"

    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig$AndroidOutputConfig;->outputConfiguration:Lcom/google/android/apps/camera/proxy/camera2/AndroidObjectHandle;

    .line 217
    invoke-virtual {v2}, Lcom/google/android/apps/camera/proxy/camera2/AndroidObjectHandle;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    return-object v0
.end method
