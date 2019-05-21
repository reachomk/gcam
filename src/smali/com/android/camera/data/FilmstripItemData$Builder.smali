.class public final Lcom/android/camera/data/FilmstripItemData$Builder;
.super Lcom/android/camera/data/FilmstripItemDataBuilder;
.source "FilmstripItemData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/data/FilmstripItemData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/data/FilmstripItemDataBuilder",
        "<",
        "Lcom/android/camera/data/FilmstripItemData$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0, p1}, Lcom/android/camera/data/FilmstripItemDataBuilder;-><init>(Landroid/net/Uri;)V

    .line 232
    return-void
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/android/camera/data/FilmstripItemData;
    .locals 1

    .prologue
    .line 229
    invoke-super {p0}, Lcom/android/camera/data/FilmstripItemDataBuilder;->build()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic getBuilder()Lcom/android/camera/data/FilmstripItemDataBuilder;
    .locals 0

    .prologue
    .line 229
    return-object p0
.end method
