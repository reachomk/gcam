.class public final Lcom/adobe/xmp/impl/xpath/XMPPathSegment;
.super Ljava/lang/Object;
.source "XMPPathSegment.java"


# instance fields
.field private alias:Z

.field private aliasForm:I

.field private kind:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->name:Ljava/lang/String;

    .line 50
    iput p2, p0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->kind:I

    .line 51
    return-void
.end method


# virtual methods
.method public final getAliasForm()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->aliasForm:I

    return v0
.end method

.method public final getKind()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->kind:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final isAlias()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->alias:Z

    return v0
.end method

.method public final setAlias(Z)V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->alias:Z

    .line 96
    return-void
.end method

.method public final setAliasForm(I)V
    .locals 0

    .prologue
    .line 122
    iput p1, p0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->aliasForm:I

    .line 123
    return-void
.end method

.method public final setKind(I)V
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->kind:I

    .line 69
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->name:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->kind:I

    packed-switch v0, :pswitch_data_0

    .line 144
    iget-object v0, p0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->name:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 137
    :pswitch_0
    iget-object v0, p0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->name:Ljava/lang/String;

    goto :goto_0

    .line 140
    :pswitch_1
    iget-object v0, p0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->name:Ljava/lang/String;

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
