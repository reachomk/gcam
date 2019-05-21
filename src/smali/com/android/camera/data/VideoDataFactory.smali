.class public final Lcom/android/camera/data/VideoDataFactory;
.super Ljava/lang/Object;
.source "VideoDataFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final UNKNOWN_SIZE:Lcom/android/camera/util/Size;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 14
    const-string v0, "VideoDataFact"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/data/VideoDataFactory;->TAG:Ljava/lang/String;

    .line 18
    new-instance v0, Lcom/android/camera/util/Size;

    invoke-direct {v0, v1, v1}, Lcom/android/camera/util/Size;-><init>(II)V

    sput-object v0, Lcom/android/camera/data/VideoDataFactory;->UNKNOWN_SIZE:Lcom/android/camera/util/Size;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/android/camera/data/VideoItemData;
    .locals 20

    .prologue
    .line 24
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 25
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 26
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 27
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 28
    const/4 v8, 0x4

    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 29
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 30
    new-instance v9, Ljava/util/Date;

    invoke-static {v10, v11}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->secondsToMillis(J)J

    move-result-wide v2

    invoke-direct {v9, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 32
    const/4 v2, 0x5

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 33
    const/4 v2, 0x6

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 34
    const/4 v3, 0x7

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 41
    if-eqz v2, :cond_0

    if-nez v3, :cond_2

    .line 42
    :cond_0
    sget-object v11, Lcom/android/camera/data/VideoDataFactory;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit16 v13, v13, 0x86

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v13, "Zero dimension in ContentResolver for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, "x"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", defaulting to high quality CamcorderProfile dimensions as a fallback."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const/4 v2, 0x1

    invoke-static {v2}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v2

    .line 53
    if-eqz v2, :cond_1

    .line 54
    new-instance v13, Lcom/android/camera/util/Size;

    iget v3, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v13, v3, v2}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 63
    :goto_0
    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 64
    const/16 v2, 0x9

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    .line 65
    const/16 v11, 0xa

    move-object/from16 v0, p0

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v16

    .line 66
    const/16 v11, 0xb

    move-object/from16 v0, p0

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 67
    move-wide/from16 v0, v16

    invoke-static {v2, v3, v0, v1}, Lcom/android/camera/data/Location;->from(DD)Lcom/android/camera/data/Location;

    move-result-object v17

    .line 69
    sget-object v2, Lcom/android/camera/data/VideoDataQuery;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    .line 71
    new-instance v3, Lcom/android/camera/data/VideoItemData;

    const/4 v12, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v3 .. v19}, Lcom/android/camera/data/VideoItemData;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Landroid/net/Uri;ZLcom/android/camera/util/Size;JILcom/android/camera/data/Location;J)V

    return-object v3

    .line 56
    :cond_1
    sget-object v2, Lcom/android/camera/data/VideoDataFactory;->TAG:Ljava/lang/String;

    const-string v3, "Video profile was null, defaulting to unknown width and height."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sget-object v13, Lcom/android/camera/data/VideoDataFactory;->UNKNOWN_SIZE:Lcom/android/camera/util/Size;

    goto :goto_0

    .line 60
    :cond_2
    new-instance v13, Lcom/android/camera/util/Size;

    invoke-direct {v13, v2, v3}, Lcom/android/camera/util/Size;-><init>(II)V

    goto :goto_0
.end method
