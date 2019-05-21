.class final Lcom/android/camera/burst/postprocessing/BurstFileNames;
.super Ljava/lang/Object;
.source "BurstFileNames.java"


# static fields
.field private static final ARTIFACT_TITLE_DATE_FORMATTER:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/burst/postprocessing/BurstFileNames;->ARTIFACT_TITLE_DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method static getArtifactTitle(Lcom/google/android/libraries/smartburst/artifacts/Artifact;J)Ljava/lang/String;
    .locals 7

    .prologue
    .line 42
    sget-object v0, Lcom/android/camera/burst/postprocessing/BurstFileNames;->ARTIFACT_TITLE_DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 43
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s_%s"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 46
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/artifacts/Artifact;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/burst/postprocessing/CreationType;->fromArtifactType(Ljava/lang/String;)Lcom/android/camera/burst/postprocessing/CreationType;

    move-result-object v0

    .line 1068
    invoke-virtual {v0}, Lcom/android/camera/burst/postprocessing/CreationType;->ordinal()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 1082
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x27

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "No known file prefix for creation type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1070
    :pswitch_0
    const-string v0, "Burst_Cover_Collage"

    .line 46
    :goto_0
    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    .line 43
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1072
    :pswitch_1
    const-string v0, "Burst_Cover_GIF_Action"

    goto :goto_0

    .line 1074
    :pswitch_2
    const-string v0, "Burst_Cover_Group_Smiles"

    goto :goto_0

    .line 1078
    :pswitch_3
    const-string v0, "Burst_Cover_Collage"

    goto :goto_0

    .line 1080
    :pswitch_4
    const-string v0, "Burst_Cover_Video"

    goto :goto_0

    .line 1068
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method static getMedResFramesDirectory(Ljava/io/File;)Ljava/io/File;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/io/File;

    const-string v1, ".medresframes"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
