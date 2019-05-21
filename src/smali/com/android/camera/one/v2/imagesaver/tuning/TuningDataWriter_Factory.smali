.class public final Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter_Factory;
.super Ljava/lang/Object;
.source "TuningDataWriter_Factory.java"

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
.field private final fileManagerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/tuning/DebugOutputFileManager$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final logFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final toasterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Toaster;",
            ">;"
        }
    .end annotation
.end field

.field private final tuningDataExtractorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataExtractor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/tuning/DebugOutputFileManager$Factory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataExtractor;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Toaster;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter_Factory;->logFactoryProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter_Factory;->fileManagerFactoryProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p3, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter_Factory;->tuningDataExtractorProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p4, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter_Factory;->toasterProvider:Ljavax/inject/Provider;

    .line 32
    return-void
.end method

.method public static create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/tuning/DebugOutputFileManager$Factory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataExtractor;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Toaster;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 9
    .line 1036
    new-instance v4, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter;

    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter_Factory;->logFactoryProvider:Ljavax/inject/Provider;

    .line 1037
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/debug/Logger$Factory;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter_Factory;->fileManagerFactoryProvider:Ljavax/inject/Provider;

    .line 1038
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/imagesaver/tuning/DebugOutputFileManager$Factory;

    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter_Factory;->tuningDataExtractorProvider:Ljavax/inject/Provider;

    .line 1039
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataExtractor;

    iget-object v3, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter_Factory;->toasterProvider:Ljavax/inject/Provider;

    .line 1040
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/debug/Toaster;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter;-><init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/one/v2/imagesaver/tuning/DebugOutputFileManager$Factory;Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataExtractor;Lcom/android/camera/debug/Toaster;)V

    .line 9
    return-object v4
.end method
