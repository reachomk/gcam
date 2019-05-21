.class public final Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter_Factory;
.super Ljava/lang/Object;
.source "GcamDngImageWriter_Factory.java"

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
.field private final apiHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/ApiHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final appContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

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

.field private final contentResolverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/ContentResolver;",
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

.field private final flagsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/flags/Flags;",
            ">;"
        }
    .end annotation
.end field

.field private final storageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/Storage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/ContentResolver;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/FileNamer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/CameraFileUtil;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/Storage;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/ApiHelper;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/flags/Flags;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter_Factory;->appContextProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter_Factory;->contentResolverProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p3, p0, Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter_Factory;->fileNamerProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p4, p0, Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter_Factory;->cameraFileUtilProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p5, p0, Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter_Factory;->storageProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p6, p0, Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter_Factory;->apiHelperProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p7, p0, Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter_Factory;->flagsProvider:Ljavax/inject/Provider;

    .line 52
    return-void
.end method

.method public static create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/ContentResolver;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/FileNamer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/CameraFileUtil;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/Storage;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/ApiHelper;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/flags/Flags;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter_Factory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 8

    .prologue
    .line 14
    .line 1056
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter_Factory;->appContextProvider:Ljavax/inject/Provider;

    .line 1057
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter_Factory;->contentResolverProvider:Ljavax/inject/Provider;

    .line 1058
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter_Factory;->fileNamerProvider:Ljavax/inject/Provider;

    .line 1059
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/storage/FileNamer;

    iget-object v4, p0, Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter_Factory;->cameraFileUtilProvider:Ljavax/inject/Provider;

    .line 1060
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/storage/CameraFileUtil;

    iget-object v5, p0, Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter_Factory;->storageProvider:Ljavax/inject/Provider;

    .line 1061
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/storage/Storage;

    iget-object v6, p0, Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter_Factory;->apiHelperProvider:Ljavax/inject/Provider;

    .line 1062
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/util/ApiHelper;

    iget-object v7, p0, Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter_Factory;->flagsProvider:Ljavax/inject/Provider;

    .line 1063
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/util/flags/Flags;

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/camera/storage/FileNamer;Lcom/android/camera/storage/CameraFileUtil;Lcom/android/camera/storage/Storage;Lcom/android/camera/util/ApiHelper;Lcom/android/camera/util/flags/Flags;)V

    .line 14
    return-object v0
.end method
