.class public final Lcom/android/camera/storage/StorageImpl_Factory;
.super Ljava/lang/Object;
.source "StorageImpl_Factory.java"

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
.field private final cameraFileUtilProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/CameraFileUtil;",
            ">;"
        }
    .end annotation
.end field

.field private final contentValuesProxyFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/mediastore/ContentValuesProxy$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final fileNamerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/FileNamer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/CameraFileUtil;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/mediastore/ContentValuesProxy$Factory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/FileNamer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/camera/storage/StorageImpl_Factory;->cameraFileUtilProvider:Ljavax/inject/Provider;

    .line 23
    iput-object p2, p0, Lcom/android/camera/storage/StorageImpl_Factory;->contentValuesProxyFactoryProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p3, p0, Lcom/android/camera/storage/StorageImpl_Factory;->fileNamerProvider:Ljavax/inject/Provider;

    .line 26
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 8
    .line 1030
    new-instance v3, Lcom/android/camera/storage/StorageImpl;

    iget-object v0, p0, Lcom/android/camera/storage/StorageImpl_Factory;->cameraFileUtilProvider:Ljavax/inject/Provider;

    .line 1031
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/storage/CameraFileUtil;

    iget-object v1, p0, Lcom/android/camera/storage/StorageImpl_Factory;->contentValuesProxyFactoryProvider:Ljavax/inject/Provider;

    .line 1032
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/storage/mediastore/ContentValuesProxy$Factory;

    iget-object v2, p0, Lcom/android/camera/storage/StorageImpl_Factory;->fileNamerProvider:Ljavax/inject/Provider;

    .line 1033
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/storage/FileNamer;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/camera/storage/StorageImpl;-><init>(Lcom/android/camera/storage/CameraFileUtil;Lcom/android/camera/storage/mediastore/ContentValuesProxy$Factory;Lcom/android/camera/storage/FileNamer;)V

    .line 8
    return-object v3
.end method
