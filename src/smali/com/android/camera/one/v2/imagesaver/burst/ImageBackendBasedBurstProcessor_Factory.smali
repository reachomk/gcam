.class public final Lcom/android/camera/one/v2/imagesaver/burst/ImageBackendBasedBurstProcessor_Factory;
.super Ljava/lang/Object;
.source "ImageBackendBasedBurstProcessor_Factory.java"

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
.field private final imageBackendProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/processing/imagebackend/ImageBackend;",
            ">;"
        }
    .end annotation
.end field

.field private final jpegEncoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/processing/imagebackend/ImageBackend;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/burst/ImageBackendBasedBurstProcessor_Factory;->imageBackendProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/burst/ImageBackendBasedBurstProcessor_Factory;->jpegEncoderProvider:Ljavax/inject/Provider;

    .line 26
    return-void
.end method

.method public static create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/processing/imagebackend/ImageBackend;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/burst/ImageBackendBasedBurstProcessor_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/one/v2/imagesaver/burst/ImageBackendBasedBurstProcessor_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 11
    .line 1030
    new-instance v2, Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;

    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/burst/ImageBackendBasedBurstProcessor_Factory;->imageBackendProvider:Ljavax/inject/Provider;

    .line 1031
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/imagebackend/ImageBackend;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/burst/ImageBackendBasedBurstProcessor_Factory;->jpegEncoderProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;

    invoke-direct {v2, v0, v1}, Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;-><init>(Lcom/android/camera/processing/imagebackend/ImageBackend;Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;)V

    .line 11
    return-object v2
.end method
