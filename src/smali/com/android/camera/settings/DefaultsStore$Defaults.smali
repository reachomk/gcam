.class final Lcom/android/camera/settings/DefaultsStore$Defaults;
.super Ljava/lang/Object;
.source "DefaultsStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/settings/DefaultsStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Defaults"
.end annotation


# instance fields
.field private defaultValue:Ljava/lang/String;

.field private possibleValues:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/camera/settings/DefaultsStore$Defaults;->defaultValue:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/android/camera/settings/DefaultsStore$Defaults;->possibleValues:[Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public final getDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/settings/DefaultsStore$Defaults;->defaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public final getPossibleValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/settings/DefaultsStore$Defaults;->possibleValues:[Ljava/lang/String;

    return-object v0
.end method
