.class final Lcom/google/android/apps/camera/specialtypes/BurstMetadataCleanupHandler;
.super Ljava/lang/Object;
.source "BurstMetadataCleanupHandler.java"


# instance fields
.field private final burstStackParser:Lcom/google/android/libraries/smartburst/storage/names/SummaryDirectoryParser;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Lcom/google/android/libraries/smartburst/storage/names/FileNames;->getBurstStackParser()Lcom/google/android/libraries/smartburst/storage/names/SummaryDirectoryParser;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/specialtypes/BurstMetadataCleanupHandler;->burstStackParser:Lcom/google/android/libraries/smartburst/storage/names/SummaryDirectoryParser;

    return-void
.end method

.method private static deleteMarkerForBurstFrame(Ljava/io/File;)Ljava/io/File;
    .locals 4

    .prologue
    .line 99
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 100
    new-instance v1, Ljava/io/File;

    const-string v2, ".deletemarkers"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 106
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v2, ".nomedia"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".deletemarker"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    const-string v2, "BurstMdCleanupHndlr"

    const-string v3, "Cannot create nomedia file"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public final handleDeleteIfBurstFrame(Ljava/io/File;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 31
    iget-object v1, p0, Lcom/google/android/apps/camera/specialtypes/BurstMetadataCleanupHandler;->burstStackParser:Lcom/google/android/libraries/smartburst/storage/names/SummaryDirectoryParser;

    invoke-interface {v1, p1}, Lcom/google/android/libraries/smartburst/storage/names/SummaryDirectoryParser;->isBurstFile(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    :goto_0
    return v0

    .line 1050
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 1051
    if-nez v2, :cond_2

    .line 1052
    const-string v0, "BurstMdCleanupHndlr"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x23

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t contain a parent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1057
    :cond_2
    :try_start_0
    invoke-static {p1}, Lcom/google/android/apps/camera/specialtypes/BurstMetadataCleanupHandler;->deleteMarkerForBurstFrame(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1064
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 1065
    if-nez v3, :cond_3

    .line 1066
    const-string v0, "BurstMdCleanupHndlr"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Couldn\'t list files in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1058
    :catch_0
    move-exception v0

    .line 1059
    const-string v1, "BurstMdCleanupHndlr"

    const-string v2, "Cannot create delete marker"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1069
    :cond_3
    array-length v4, v3

    move v1, v0

    :goto_2
    if-ge v1, v4, :cond_5

    aget-object v5, v3, v1

    .line 1070
    iget-object v6, p0, Lcom/google/android/apps/camera/specialtypes/BurstMetadataCleanupHandler;->burstStackParser:Lcom/google/android/libraries/smartburst/storage/names/SummaryDirectoryParser;

    invoke-interface {v6, v5}, Lcom/google/android/libraries/smartburst/storage/names/SummaryDirectoryParser;->isBurstFile(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1071
    invoke-static {v5}, Lcom/google/android/apps/camera/specialtypes/BurstMetadataCleanupHandler;->deleteMarkerForBurstFrame(Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1069
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1081
    :cond_5
    new-instance v1, Ljava/io/File;

    const-string v4, ".deletemarkers"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1083
    array-length v2, v3

    :goto_3
    if-ge v0, v2, :cond_7

    aget-object v4, v3, v0

    .line 1087
    invoke-virtual {v4, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1090
    invoke-static {v4}, Lcom/google/android/apps/camera/specialtypes/BurstMetadataCleanupHandler;->deleteMarkerForBurstFrame(Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1091
    invoke-static {v4}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->recursiveDelete(Ljava/io/File;)Z

    .line 1083
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1095
    :cond_7
    invoke-static {v1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->recursiveDelete(Ljava/io/File;)Z

    goto :goto_1
.end method
