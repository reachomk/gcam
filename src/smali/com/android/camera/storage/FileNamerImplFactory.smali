.class final Lcom/android/camera/storage/FileNamerImplFactory;
.super Ljava/lang/Object;
.source "FileNamerImplFactory.java"


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
.method constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
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
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/inject/Provider;

    iput-object v0, p0, Lcom/android/camera/storage/FileNamerImplFactory;->imageFileFormatProvider:Ljavax/inject/Provider;

    .line 27
    const/4 v0, 0x2

    invoke-static {p2, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/inject/Provider;

    iput-object v0, p0, Lcom/android/camera/storage/FileNamerImplFactory;->panoramaFileFormatProvider:Ljavax/inject/Provider;

    .line 28
    const/4 v0, 0x3

    invoke-static {p3, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/inject/Provider;

    iput-object v0, p0, Lcom/android/camera/storage/FileNamerImplFactory;->videoFileFormatProvider:Ljavax/inject/Provider;

    .line 29
    return-void
.end method


# virtual methods
.method final create$5166KOBMC4NMIRPF8PKMOP9R55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TPN8RRIC5JMABQ6D5M6AJJ1DLIN4IBDE1M3M___(Ljava/io/File;)Lcom/android/camera/storage/FileNamer;
    .locals 5

    .prologue
    .line 32
    new-instance v1, Lcom/android/camera/storage/FileNamer;

    iget-object v2, p0, Lcom/android/camera/storage/FileNamerImplFactory;->imageFileFormatProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/camera/storage/FileNamerImplFactory;->panoramaFileFormatProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/camera/storage/FileNamerImplFactory;->videoFileFormatProvider:Ljavax/inject/Provider;

    const/4 v0, 0x4

    .line 36
    invoke-static {p1, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/camera/storage/FileNamer;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljava/io/File;)V

    .line 32
    return-object v1
.end method
