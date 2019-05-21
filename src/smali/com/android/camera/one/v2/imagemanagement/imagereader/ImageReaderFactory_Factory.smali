.class public final Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFactory_Factory;
.super Ljava/lang/Object;
.source "ImageReaderFactory_Factory.java"

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
.field private final loggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFactory_Factory;->loggerProvider:Ljavax/inject/Provider;

    .line 15
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 8
    .line 1019
    new-instance v1, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFactory;

    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFactory_Factory;->loggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/debug/Logger$Factory;

    invoke-direct {v1, v0}, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFactory;-><init>(Lcom/android/camera/debug/Logger$Factory;)V

    .line 8
    return-object v1
.end method
