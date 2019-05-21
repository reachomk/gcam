.class public final Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderModule_ProvideImageReaderFactory;
.super Ljava/lang/Object;
.source "ImageReaderModule_ProvideImageReaderFactory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider;"
    }
.end annotation


# instance fields
.field private final module:Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderModule;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderModule_ProvideImageReaderFactory;->module:Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderModule;

    .line 16
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 8
    .line 1020
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderModule_ProvideImageReaderFactory;->module:Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderModule;

    .line 1021
    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderModule;->provideImageReader()Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1020
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;

    .line 8
    return-object v0
.end method
