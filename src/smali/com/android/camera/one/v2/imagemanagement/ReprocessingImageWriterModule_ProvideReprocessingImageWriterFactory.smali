.class public final Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule_ProvideReprocessingImageWriterFactory;
.super Ljava/lang/Object;
.source "ReprocessingImageWriterModule_ProvideReprocessingImageWriterFactory.java"

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
.field private final cameraCaptureSessionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;",
            ">;>;"
        }
    .end annotation
.end field

.field private final managedImageWriterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriterFactory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule_ProvideReprocessingImageWriterFactory;->module:Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule;

    .line 28
    iput-object p2, p0, Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule_ProvideReprocessingImageWriterFactory;->cameraCaptureSessionProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p3, p0, Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule_ProvideReprocessingImageWriterFactory;->managedImageWriterFactoryProvider:Ljavax/inject/Provider;

    .line 31
    return-void
.end method

.method public static create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BQICLO74RR3CLPN6QBECT4MQOB7CLBN4QBKCLP4QRR4ELM6AEQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriterFactory;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule_ProvideReprocessingImageWriterFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule_ProvideReprocessingImageWriterFactory;-><init>(Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 12
    .line 1035
    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule_ProvideReprocessingImageWriterFactory;->module:Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule;

    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule_ProvideReprocessingImageWriterFactory;->cameraCaptureSessionProvider:Ljavax/inject/Provider;

    .line 1037
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule_ProvideReprocessingImageWriterFactory;->managedImageWriterFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriterFactory;

    .line 1036
    invoke-virtual {v2, v0, v1}, Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule;->provideReprocessingImageWriter(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriterFactory;)Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1035
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter;

    .line 12
    return-object v0
.end method
