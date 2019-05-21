.class public Lcom/android/camera/storage/mediastore/ContentValuesProxy;
.super Ljava/lang/Object;
.source "ContentValuesProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/storage/mediastore/ContentValuesProxy$Factory;
    }
.end annotation


# instance fields
.field private final contentValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2026
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/camera/storage/mediastore/ContentValuesProxy;->contentValues:Landroid/content/ContentValues;

    .line 2027
    return-void
.end method


# virtual methods
.method public getContentValues()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/android/camera/storage/mediastore/ContentValuesProxy;->contentValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Double;)V
    .locals 1

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/android/camera/storage/mediastore/ContentValuesProxy;->contentValues:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1067
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/android/camera/storage/mediastore/ContentValuesProxy;->contentValues:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1052
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/android/camera/storage/mediastore/ContentValuesProxy;->contentValues:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1057
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/android/camera/storage/mediastore/ContentValuesProxy;->contentValues:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    return-void
.end method
