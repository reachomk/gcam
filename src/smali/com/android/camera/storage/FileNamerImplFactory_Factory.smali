.class public final Lcom/android/camera/storage/FileNamerImplFactory_Factory;
.super Ljava/lang/Object;
.source "FileNamerImplFactory_Factory.java"

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
.field private final imageFileFormatProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private final panoramaFileFormatProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private final videoFileFormatProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/text/DateFormat;",
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
            "Ljava/text/DateFormat;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/text/DateFormat;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/text/DateFormat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/camera/storage/FileNamerImplFactory_Factory;->imageFileFormatProvider:Ljavax/inject/Provider;

    .line 23
    iput-object p2, p0, Lcom/android/camera/storage/FileNamerImplFactory_Factory;->panoramaFileFormatProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p3, p0, Lcom/android/camera/storage/FileNamerImplFactory_Factory;->videoFileFormatProvider:Ljavax/inject/Provider;

    .line 26
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 8
    .line 1030
    new-instance v0, Lcom/android/camera/storage/FileNamerImplFactory;

    iget-object v1, p0, Lcom/android/camera/storage/FileNamerImplFactory_Factory;->imageFileFormatProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/storage/FileNamerImplFactory_Factory;->panoramaFileFormatProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/camera/storage/FileNamerImplFactory_Factory;->videoFileFormatProvider:Ljavax/inject/Provider;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/storage/FileNamerImplFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 8
    return-object v0
.end method
