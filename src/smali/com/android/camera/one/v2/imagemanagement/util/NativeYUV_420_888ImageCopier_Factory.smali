.class public final Lcom/android/camera/one/v2/imagemanagement/util/NativeYUV_420_888ImageCopier_Factory;
.super Ljava/lang/Object;
.source "NativeYUV_420_888ImageCopier_Factory.java"

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
.method private constructor <init>(Ljavax/inject/Provider;)V
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
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/util/NativeYUV_420_888ImageCopier_Factory;->loggerProvider:Ljavax/inject/Provider;

    .line 16
    return-void
.end method

.method public static create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 25
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/util/NativeYUV_420_888ImageCopier_Factory;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/imagemanagement/util/NativeYUV_420_888ImageCopier_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 8
    .line 1020
    new-instance v1, Lcom/google/android/libraries/smartburst/training/MetadataSerializer;

    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/util/NativeYUV_420_888ImageCopier_Factory;->loggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/debug/Logger$Factory;

    invoke-direct {v1, v0}, Lcom/google/android/libraries/smartburst/training/MetadataSerializer;-><init>(Lcom/android/camera/debug/Logger$Factory;)V

    .line 8
    return-object v1
.end method
