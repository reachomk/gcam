.class public final Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderModule_ProvideSurfaceFactory;
.super Ljava/lang/Object;
.source "ImageReaderModule_ProvideSurfaceFactory.java"

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
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderModule_ProvideSurfaceFactory;->module:Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderModule;

    .line 15
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 8
    .line 1019
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderModule_ProvideSurfaceFactory;->module:Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderModule;

    .line 1020
    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderModule;->provideSurface()Landroid/view/Surface;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1019
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .line 8
    return-object v0
.end method
